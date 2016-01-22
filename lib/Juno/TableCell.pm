package Juno::TableCell;

use Modern::Perl;

use List::Util qw/max/;
use Scalar::Util qw/weaken/;

use constant KEYS => [qw/
	alignment
	background_color
	column_span
	column_width
	font
	font_color
	font_size
	href
	id
	is_bold
	is_header
	is_italic
	is_meta
	is_ok_to_break_into_multiple_lines
	is_section_head
	is_sortable
	is_visible
	max_width
	min_width
	name
	nowrap
    row
	row_span
	title
	valign
	value
/];

use Class::XSAccessor
	accessors => [
		@{ __PACKAGE__->KEYS }
	],
	list => [qw/
		css_classes
	/];

sub new
{
	my ($class, %data) = @_;
  my $self = { $class->_minify_hash(%data) };

	return bless($self, $class);
}

sub _minify_hash
{
	my ($class, %hash) = @_;

	delete @hash{grep { !defined($hash{$_}) } keys(%hash)};

	return %hash;
}

sub _get_width_of_longest_word_in_line
{
	my ($self) = @_;
	(my $cell_value = $self->value) =~ s/\r//g;

	if ($self->is_ok_to_break_into_multiple_lines || $self->is_header || $self->is_section_head) {
		my @widths;
		foreach my $line_value (split(/\n/, $cell_value)) {

			foreach my $word (split(m{(?:([-/])|\s)+}, $line_value)) {
				next if (!defined($word));
				push(@widths, length($word));
			}
		}
		return max(@widths);
	}

	return length($cell_value);
}

1;

__END__

=pod

=head1 Juno::TableCell

=over

=item new

=item _minify_hash

=item _get_width_of_longest_word_in_line

=back

=head2 Attributes

=over

=item KEYS
    This constant holds all the fields within the class

=item alignment
=item background_color
=item column_span
=item column_width
=item font
=item font_color
=item font_size
=item href
=item id
=item is_bold
=item is_header
=item is_italic
=item is_meta
=item is_ok_to_break_into_multiple_lines
=item is_section_head
=item is_sortable
=item is_visible
=item max_width
=item min_width
=item name
=item nowrap
=item row_span
=item title
=item valign
=item value

=back

=cut
