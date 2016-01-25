package Juno::TableRow;

use Modern::Perl;
use parent qw/Juno::CellCollection/;

use Class::XSAccessor
    accessors => [qw/
        affects_row_coloring
        ignored_by_paging
        font
        font_size
        font_color
        is_header
        is_section_head
    /],
    list => [qw/
        css_classes
    /];

sub transposed_type { 'Juno::TableColumn' }
sub add_cell_at_index
{
    my ($self, $cell, $index) = @_;
    $self->cells_splice($index, 0, $cell);
}

1;

__END__

=pod

=head1 Juno::TableRow

=over

=item affects_row_coloring
=item ignored_by_paging
=item font
=item font_size
=item font_color
=item is_header
=item is_section_head
=item css_classes
=item transposed_type
=item add_cell_at_index

=back

=cut
