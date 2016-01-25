package Juno::RowBuilder;

use Modern::Perl;

use Class::XSAccessor
    hash => [qw/
        indices
    /];

use constant generic_cell_data_type_class => 'Juno::DataType::String';

sub new {}
sub _get_generic_cell {}
sub _table_row_options {}
sub render {}
sub _build_row {}
sub is_pdf {}
sub is_excel {}
sub is_html {}
sub _build_cell_indices {}
sub get_cell {}
sub cell_value {}

1;

__END__

=pod

=head1 Juno::RowBuilder

=over

=item new
=item _get_generic_cell
=item _table_row_options
=item render
=item _build_row
=item is_pdf
=item is_excel
=item is_html
=item _build_cell_indices
=item get_cell
=item cell_value

=back

=head2 Attributes

=over

=item indices

=back

=cut
