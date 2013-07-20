use strict;
use warnings;
use Test::More;
use Data::Dummy::Util qw(random);

subtest "random" => sub {
    my $array_ref = [1..50];
    my $i = random($array_ref);

    ok grep { $i == $_ } @$array_ref;
};

done_testing;
