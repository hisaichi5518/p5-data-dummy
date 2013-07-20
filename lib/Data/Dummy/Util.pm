package Data::Dummy::Util;
use strict;
use warnings;
use parent "Exporter";
our @EXPORT = qw(random);

sub random {
    my ($array_ref) = @_;

    $array_ref->[int rand scalar @{$array_ref}];
}

1;
