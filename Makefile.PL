use ExtUtils::MakeMaker::CPANfile;
use ExtUtils::Manifest;

my $VERSION = '0.1.0';

WriteMakefile(
    ABSTRACT          => 'Parse XDR (eXternal Data Representation) definitions into an AST (Abstract Syntax Tree)',
    AUTHOR            => 'Erik Huelsmann',
    NAME              => 'XDR::Parse',
    PL_FILES          => {
        'yapp.PL' => {
            'lib/XDR/Parse.pm' => [ 'xdr.yp' ]
        }
    },
    PM_FILTER         => "./pmfilter $VERSION",
    VERSION           => $VERSION,
);
