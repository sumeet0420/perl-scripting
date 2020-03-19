#!/usr/bin/perl;
use strict;
use warnings;
use Data::Dumper;
use lib '.';
use Models::Person;
sub main {
my $person1 = new Models::Person("Sumeet", 28);
$person1 ->greet("Mike");
}

main();