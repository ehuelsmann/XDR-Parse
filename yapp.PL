
use strict;
use warnings;

system 'yapp -o lib/XDR/Parse.pm -m XDR::Parse xdr.yp';
exit $?;
