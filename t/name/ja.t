use strict;
use warnings;
use Test::More;
use Data::Dummy::Name::ja;

subtest "cant use prefix" => sub {
    eval { Data::Dummy::Name::ja->prefix };
    like $@, qr/this module is not support 'prefix' method/;
};

subtest "cant use suffix" => sub {
    eval { Data::Dummy::Name::ja->suffix };
    like $@, qr/this module is not support 'suffix' method/;
};

subtest "cant use name_with_prefix" => sub {
    eval { Data::Dummy::Name::ja->name_with_prefix };
    like $@, qr/this module is not support 'name_with_prefix' method/;
};

subtest "cant use name_with_suffix" => sub {
    eval { Data::Dummy::Name::ja->name_with_suffix };
    like $@, qr/this module is not support 'name_with_suffix' method/;
};

done_testing;
