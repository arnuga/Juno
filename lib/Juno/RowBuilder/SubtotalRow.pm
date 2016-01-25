package Juno::RowBuilder::SubtotalRow;

use Modern::Perl;
use parent qw/Juno::RowBuilder/;

use Class::XSAccessor
    accessors => [qw/
        last_group
        _subtotal_group_index
    /],
    list => [qw/
        _headers
    /],
    hash => [qw/
        _subtotals
        _is_subtotal_group
        _should_aggregate
    /];

sub _save_templates {}
sub _reset_subtotals {}
sub render {}
sub _record_current_fields {}
sub _render_subtotal_row {}

1;

__END__

=pod

=head1 Juno::RowBuilder::SubtotalRow

=over

=item last_group
=item _subtotal_group_index
=item _headers
=item _subtotals
=item _is_subtotal_group
=item _should_aggregate
=item _save_templates
=item _reset_subtotals
=item render
=item _record_current_fields
=item _render_subtotal_row

=back

=cut
