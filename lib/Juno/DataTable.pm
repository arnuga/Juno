package Juno::DataTable;

use Class::XSAccessor
    accessors => [qw/
        allow_unfiltered_datatable_copy
        breakup_headings
        data_timestamp
        hide_entire_datatable
        href_columns
        loaded_from_cache
        no_data_message
        no_paging
        num_columns
        num_fixed_columns
        render_final_subtotal_row
        row_index
        rows_per_page
        scroll_to_column
        sortable_columns
    /],
    list => [qw/
        rows
    /],
    hash => [qw/
        loaded_row_renderer_classes_clear
    /];

use constant CLASS_DEFAULTS => {
    no_data_message  => 'No data is available at this time.',
    breakup_headings => 1,
    rows_per_page    => 20,
};

sub new
{
	my ($class, %data) = @_;
	my $self = bless(\%data, $class);

    $self->rows_per_page(0) if ($self->no_paging);
    $self->loaded_row_renderer_classes_clear();

    return $self;
}

sub load_data {}
sub get_headers {}
sub _collect_applicable_row_renderers_for_row {}
sub get_data_rows {}
sub get_footer_rows {}
sub _get_renderer {}
sub render {}
sub _iter_row_renderers {}
sub _ensure_that_number_of_columns_is_consistent {}
sub print {}
sub move_row {}
sub alter_row_attributes {}
sub alter_column_attributes {}
sub add_row_at_index {}
sub remove_row_at_index {}
sub _get_header_row {}
sub _fetch_all_rows_in_dataset {}
sub _get_data_rows {}
sub _get_datatable_cell_options {}
sub _get_datatable_cells {}
sub _get_generic_cell {}
sub _get_summary_row {}
sub new_from_json {}
sub _get_default_row_renderers {}

1;

=pod

=encoding utf8

=head1 Juno::DataTable

=over

=item allow_unfiltered_datatable_copy
=item breakup_headings
=item data_timestamp
=item hide_entire_datatable
=item href_columns
=item loaded_from_cache
=item no_data_message
=item no_paging
=item num_columns
=item num_fixed_columns
=item render_final_subtotal_row
=item row_index
=item rows_per_page
=item scroll_to_column
=item sortable_columns
=item rows
=item loaded_row_renderer_classes_clear
=item new
=item load_data
=item get_headers
=item _collect_applicable_row_renderers_for_row
=item get_data_rows
=item get_footer_rows
=item _get_renderer
=item render
=item _iter_row_renderers
=item _ensure_that_number_of_columns_is_consistent
=item print
=item move_row
=item alter_row_attributes
=item alter_column_attributes
=item add_row_at_index
=item remove_row_at_index
=item _get_header_row
=item _fetch_all_rows_in_dataset
=item _get_data_rows
=item _get_datatable_cell_options
=item _get_datatable_cells
=item _get_generic_cell
=item _get_summary_row
=item new_from_json
=item _get_default_row_renderers

=back

=cut
