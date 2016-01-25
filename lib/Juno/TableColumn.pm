package Juno::TableColumn;

use Modern::Perl;
use parent qw/Juno::CellCollection/;

sub transposed_type { 'Juno::TableRow' }

1;

__END__

=pod

=head1 Juno::TableColumn

=over

=item transposed_type

=back

=cut
