package Juno::CellCollection;

use Modern::Perl;

use Class::XSAccessor
    accessors => [qw/
        type
        is_meta
        is_aggregate
    /],
    list => [qw/
        cells
    /],
    hash => [qw/
        cell_index_by_name
    /];

sub new {}
sub index {}
sub add_cell {}
sub clone {}
sub transpose {}
sub transposed_type {}
sub sum_of_attribute_across_cells {}
sub print {}

1;

__END__

=pod

=head1 Juno::CellCollection

=over

=item new

=back

=head2 Attributes

=over

=item type
=item is_meta
=item is_aggregate
=item cells
=item cell_index_by_name
=item index
=item add_cell
=item clone
=item transpose
=item transposed_type
=item sum_of_attribute_across_cells
=item print

=back

=cut
