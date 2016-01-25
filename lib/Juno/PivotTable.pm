package Juno::PivotTable;

use Modern::Perl;
use parent qw/Juno::DataTable/;

use Class::XSAccessor
    accessors => [qw/
        datatable
    /];

sub load_data {}
sub _is_any_cell_visible {}
sub _transpose {}
sub convert_rows_to_columns {}
sub _do_post_processing_work {}
sub _rebuild_leading_separators {}
sub consolidate_header_cells {}

1;

__END__

=pod

=head1 Juno::PivotTable

=over

=item load_data
=item _is_any_cell_visible
=item _transpose
=item convert_rows_to_columns
=item _do_post_processing_work
=item _rebuild_leading_separators
=item consolidate_header_cells
=item datatable

=back

=cut
