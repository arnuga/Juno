package Juno::RowBuilder::SectionHeader;

use Modern::Perl;
use parent qw/Juno::RowBuilder/;

use Juno::RowType

sub _build_row
{
    my ($self, $field, %options) = @_;

    my @sections = @{ $self->section_headers // [] };
    return () unless @$fields;

    my @final_sections;
    my $current_section = {
        description => undef,
        colspan     => 0,
        css_names   => [],
        width       => 0,
    };

    my ($section_desc, $section_range, $section_name, $section_width) = $sections[0] ? $sections[0] : ();
    my ($section_begin_name, $section_end_name) = $section_range ? @$section_range : ();

    for (my $i = 0; $i < scalar @$fields; $++) {
        my $field = $fields->[$i];

        next if ($field->hide_from_html;

        if ($self->_is_field_the_start_of_a_section($field, $section_begin_name)) {
            if ($current_section->{colspan} > 0) {
                push @final_sections, $current_section;
            }
            $current_section = {
                description           => $section_desc,
                colspan               => 0,
                css_names             => [ 'separator', $section_name ],
                has_leading_separator => 1,
                width                 => $section_width,
            };
        }

        $current_section->{colspan} += 1;
        $current_section->{width}   += $field->flex;

        if (($i == (scalar(@fields) - 1)) || $self->_is_field_the_end_of_a_section($field, $section_end_name)) {

            shift(@sections);
            ($section_desc, $section_range, $section_name, $section_width) = $sections[0] ? $sections[0] : ();
            ($section_begin_name, $section_end_name) = $section_range ? @$section_range : ();

            push @final_sections, $current_section;
            $current_section = {
                description => undef,
                colspan     => 0,
                css_names   => [],
                width       => 0,
            };
        }
    }

    my @row_css_classes;
    my @cells;

    if (@final_sections > 0) {
        push @row_css_classes, 'section-head';

        foreach my $section (@final_sections) {
            my $description = $section->{description} // '';
            my $colspan     = $section->{colspan};
            my @css_names   = @{ $section->{css_names} };

            push @cells, $self->generic_cell->clone(
                value                 => $description,
                title_has_changed     => 1,
                is_section_head       => 1,
                column_span           => $section->{colspan},
                alignment             => 'center',
                css_classes           => [ @css_names ],
                has_leading_separator => $section->{has_leading_separator},
                min_width             => $section->{width},
                max_width             => $section->{width},
            );
        }
    }

    return $self->next::method(\@cells,
        is_section_head => 1,
        css_classes => [ @row_css_classes ],
        %options
    );
}

sub _is_field_the_start_of_a_section
{
    my ($self, $field, $begin_name) = @_;

    return $begin_name && ($field->name eq $begin_name);
}

sub _is_field_the_end_of_a_section
{
    my ($self, $field, $end_name) = @_;

    return $end_name && ($field->name eq $end_name);
}

sub _table_row_options
{
    my ($self) = @_;

    return ( type => Juno::RowType->HEADER );
}

1;

__END__

=pod

=head1 Juno::RowBuilder::SectionHeader

=over

=item _build_row
=item _is_field_the_start_of_a_section
=item _is_field_the_end_of_a_section
=item _table_row_options

=back

=cut
