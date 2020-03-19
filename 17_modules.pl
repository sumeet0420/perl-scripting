#!usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

#Essential as @INC will not find without this..
use lib '.';
#This is like static import.
use PackagesTest::Modules qw(test);
use PackagesTest::HelloWorld;

sub main{
test();
PackagesTest::HelloWorld::greet();
}

main();