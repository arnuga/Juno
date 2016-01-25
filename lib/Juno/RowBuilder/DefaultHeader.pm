package Juno::RowBuilder::DefaultHeader;

use Modern::Perl;
use parent qw/Juno::RowBuilder/;

use Juno::RowType;

sub _table_row_options
{
    my ($self) = @_;

    return (
        is_header => 1,
        type      => Juno::RowType->HEADER,
    );
}

1;

__END__

=pod

=head1 Juno::RowBuilder::DefaultHeader

=over

=item _table_row_options

=back

=cut
