package Juno::RowBuilder::DefaultFooter;

use Modern::Perl;
use parent qw/Juno::RowBuilder/;

use Juno::RowType;

sub _table_row_options
{
    my ($self) = @_;

    return (
        type => Juno::RowType->FOOTER,
    );
}

sub _get_href_column
{
    return;
}

1;

__END__

=pod

=head1 Juno::RowBuilder::DefaultFooter

=over

=item _table_row_options
=item _get_href_column

=back

=cut
