#!/usr/bin/perl

use strict;

my $inputfile = @ARGV[0];

print "Last Index At...$#ARGV\n";

if(@ARGV ge 3){
print "Number of arguments greater than or equal to 3!!\n";
} else {
print "Number of arguments less than 3!!\n";
}

print "$inputfile\n";