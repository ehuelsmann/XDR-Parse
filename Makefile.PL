use ExtUtils::MakeMaker::CPANfile;
use ExtUtils::Manifest;

my $VERSION = '0.1.0';

WriteMakefile(
    ABSTRACT          => 'Parse XDR (eXternal Data Representation) definitions into an AST (Abstract Syntax Tree)',
    AUTHOR            => 'Erik Huelsmann',
    LICENSE           => 'perl_5',
    META_MERGE        => {
        "meta-spec"      => { version => 2 },
        resources        => {
            repository      => {
                type           => 'git',
                url            => 'git://github.com/ehuelsmann/XDR-Parse.git',
                web            => 'https://github.com/ehuelsmann/XDR-Parse',
            },
        },
    },
    NAME              => 'XDR::Parse',
    PL_FILES          => {
        'yapp.PL' => {
            'lib/XDR/Parse.pm' => [ 'xdr.yp' ],
        }
    },
    PM_FILTER         => "./pmfilter $VERSION",
    VERSION           => $VERSION,
);
