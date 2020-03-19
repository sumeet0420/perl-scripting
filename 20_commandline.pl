#!/usr/bin/perl;
use strict;
use warnings;
use Data::Dumper;
#Use for getting Command line arguments..
use Getopt::Std;
#Use for output buffering
$|=1;

sub main{
local $\="\n";
print Dumper(@ARGV);
print scalar @ARGV;

print "**********************************";
my %opts;
getopts('af:c',\%opts);
print Dumper(%opts);
}

main();