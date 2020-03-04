#!/usr/bin/perl

use strict;
use warnings;

print "Dogs are great!\n" if 9>8;

print "Are you full? If you are, enter a 1. If you are hungry, enter a 0.\n";
chomp (my $full = <STDIN>);

unless($full){
print "Eat, Pizza!!!\n";
}

print "***********************\n";

print "Eat, Pizza!!!\n" unless $full;
print "***********************\n";
for(1..90){
print "$_\n";
}
print "***********************\n";

#Last, next, redo

print "****************************\n";
print "Last, next, redo\n";

print "(condition)?(if):(else)\n";

print "*************Random numbers...**************\n";
my $rand_number =  int rand 10;
($rand_number >= 2 && $rand_number < 5) ? print ("Number $rand_number in range 2-4") : print('Number $rand_number out of range..');
print "\n*************Random numbers...**************\n";
($rand_number >= 2 and $rand_number < 5) ? print ("Number $rand_number in range 2-4") : print('Number $rand_number out of range..');