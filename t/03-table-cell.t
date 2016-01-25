#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

use_ok('Juno::TableCell');

can_ok('Juno::TableCell', 'new');
my $cell = Juno::TableCell->new;

can_ok($cell, 'alignment');
can_ok($cell, 'background_color');
can_ok($cell, 'column_span');
can_ok($cell, 'column_width');
can_ok($cell, 'font');
can_ok($cell, 'font_color');
can_ok($cell, 'font_size');
can_ok($cell, 'href');
can_ok($cell, 'id');
can_ok($cell, 'is_bold');
can_ok($cell, 'is_header');
can_ok($cell, 'is_italic');
can_ok($cell, 'is_meta');
can_ok($cell, 'is_ok_to_break_into_multiple_lines');
can_ok($cell, 'is_section_head');
can_ok($cell, 'is_sortable');
can_ok($cell, 'is_visible');
can_ok($cell, 'max_width');
can_ok($cell, 'min_width');
can_ok($cell, 'name');
can_ok($cell, 'nowrap');
can_ok($cell, 'row_span');
can_ok($cell, 'title');
can_ok($cell, 'valign');
can_ok($cell, 'value');

eq_hash(
    { $cell->_minify_hash(a => undef, b => 1) },
    { b => 1 },
    'Verify that keys with no value are removed'
);

can_ok($cell, '_get_width_of_longest_word_in_line');

done_testing;

