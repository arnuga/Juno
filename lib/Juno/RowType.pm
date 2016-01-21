package Juno::RowType;

use constant  {
	HEADER => 'Header',
	FOOTER => 'Footer',
	DATA   => 'Data',
};

1;

=pod

=encoding utf8

=head1 Juno::RowType

These constants are used to determine what type of row exists at a given location.
Their values may be used at some future point. You can even add more/new types as you desire.

=over

=item HEADER

These rows will always be at the top and should be used as any normal header in an excel or html table

=item FOOTER

These rows will always be at the bottom, are often used for summarizing columns of numbers

=item DATA

These rows are used for ALL other types (at least for now). The complete definition of a row (or column)
is defined in L<CellCollection/DOCS>

=back

=cut
