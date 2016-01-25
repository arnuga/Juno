package Juno::RowBuilder::DefaultData;

use Modern::Perl;
use parent qw/Juno::RowBuilder/;

use Juno::RowType;

sub _table_row_options
{
    my ($self) = @_;

    return (
        type                 => Juno::RowType->DATA,
        affects_row_coloring => 1,
    );
}

1;

__END__

=pod

=head1 Juno::RowBuilder::DefaultData

=over

=item _table_row_options

=back

=cut
