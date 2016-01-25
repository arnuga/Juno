package Juno::DataType::String;

sub new
{
	my ($class) = @_;
	my $self = bless({}, $class);

    return $self;
}

sub value {}
sub html_value {}
sub pdf_value {}
sub excel_value {}
sub json_value {}
sub csv_value {}

1;

=pod

=encoding utf8

=head1 Juno::DataType::String

=over

=item new
=item value
=item html_value
=item pdf_value
=item excel_value
=item json_value
=item csv_value

=back

=cut
