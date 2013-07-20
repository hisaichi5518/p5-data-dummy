use strict;
use warnings;
use Benchmark qw(:all);
use Data::Faker;
use Data::Dummy::Name;

my $faker = Data::Faker->new();

cmpthese -1, {
    "faker" => sub {
        $faker->name;
    },
    "dummy" => sub {
        Data::Dummy::Name->name;
    },
};

