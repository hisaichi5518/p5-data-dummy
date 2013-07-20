use strict;
use warnings;
use Test::More;
use Data::Dummy::Name;

subtest "create prefix" => sub {
    my $text = Data::Dummy::Name->prefix;

    ok grep { $text eq $_ } @{Data::Dummy::Name->PREFIXES()};
};

subtest "create suffix" => sub {
    my $text = Data::Dummy::Name->suffix;

    ok grep { $text eq $_ } @{Data::Dummy::Name->SUFFIXES()};
};

subtest "create first_name" => sub {
    my $text = Data::Dummy::Name->first_name;

    ok grep { $text eq $_ } @{Data::Dummy::Name->FIRST_NAMES()};
};

subtest "create last_name" => sub {
    my $text = Data::Dummy::Name->last_name;

    ok grep { $text eq $_ } @{Data::Dummy::Name->LAST_NAMES()};
};

subtest "create name" => sub {
    my $text = Data::Dummy::Name->name;

    ok $text =~ m{[A-Z]['a-z]+ [A-Z]['a-z]+}, $text;
};

subtest "create last_first" => sub {
    my $text = Data::Dummy::Name->last_first;

    ok $text =~ m{[A-Z]['a-z]+ [A-Z]['a-z]+}, $text;
};

subtest "create name_with_prefix" => sub {
    my $text = Data::Dummy::Name->name_with_prefix;

    ok $text =~ m{[A-Z][a-z]+\.? [A-Z]['a-z]+ [A-Z]['a-z]+}, $text;
};

subtest "create name_with_suffix" => sub {
    my $text = Data::Dummy::Name->name_with_suffix;

    ok $text =~ m{[A-Z]['a-z]+ [A-Z]['a-z]+ [A-Za-z]+\.?}, $text;
};






done_testing;
