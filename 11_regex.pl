#!/usr/bin/perl

use strict;
use warnings;

print "***************\n";
print "Print the words which have continoues repeating words...\n";
my $var = 'sea';
if($var =~ /(.)\1/){
print "$var is a match...\n";
} else {
print "$var is not a match...\n";
}
print "***************\n";
my $count=0;
while (<>){
if(/(.)\1/){
$count++; 
#print;
}
}
print "$count matches found...\n";

my $url='https://www.google.com';

if($url =~ m<https://www.google.com>){
print "URL matches...\n";
}

$_ = "one two three";
#Using special regex variables $` => Back match, $& => Match, $' => After Match
if(/\s\w+\s/){
print "Before match:($`)\nMatch:($&)\nAfter match: ($')\n";
}
print "***************\n";
$_="wewe";
my $count = tr/(we)//;
print "Count of we: $count....\n";
print;
print "***************\n";
print "Changing ....\n";
$_="wewe";
$_ =~s/(.*)/\U$1/;
print;