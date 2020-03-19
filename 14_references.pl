#!/usr/bin/perl

use strict;
use warnings;

local $\ ="\n";
my @numbers_list = (1..10);
my $numbers = \@numbers_list;
print "@numbers_list";
print "${$numbers}[0]";
print "$$numbers[1]";

print "*******************Aray of arrays**************";


my @mp_cities = qw(INDORE GWALIOR);
my @mh_cities = qw(PUNE MUMBAI);
my @states = (\@mp_cities, \@mh_cities);
local $" = ", ";
print "@{$states[0]}[0]";
#Alternate way of doing that...
print "$states[0]->[1]";
#Simplest way of doing that...
print "$states[0][1]";
print "*******************Arrays with anonymous arrays**************";
my @new_array = (["hello","how","are","you"],["hmm.."]);
print "@new_array[0]->[1]";
my %country = (mp=>["INDORE","GWALIOR"],mh=>["PUNE","MUMBAI"]);
print "$country{'mp'}->[1]";
print "$country{'mh'}->[0]";
print "*******************Hashes of Arrays**************";
my %country_hash = (india=>\%country);
#print "$country_hash{'india'}->{mp}->[0]";
#print "${$country_hash{'india'}}{mp}->[0]";
print "$country_hash{'india'}{mp}[0]";

print "************Auto-Vivification************"
