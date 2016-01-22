use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Juno',
    AUTHOR           => q{David J. Shultz <dshultz@cpan.org>},
    VERSION_FROM     => 'lib/Juno.pm',
    ABSTRACT         => 'Juno - A Highly configurable, data-driven matrix engine (Psst, it makes tables fun again)',
    LICENSE          => 'perl_5',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Class::XSAccessor' => 0,
        'DBIx::Class'       => 0,
		'List::Util'        => 0,
		'Modern::Perl'      => 0,
		'Scalar::Util'      => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Juno-*' },
);
