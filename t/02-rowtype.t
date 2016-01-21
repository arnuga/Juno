#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

use_ok('Juno::RowType');
is(Juno::RowType->HEADER, 'Header');
is(Juno::RowType->FOOTER, 'Footer');
is(Juno::RowType->DATA,     'Data');

done_testing;

