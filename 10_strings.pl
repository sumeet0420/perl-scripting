#!/usr/bin/perl
use strict;
use warnings;
#String Operations
my $var = "Hello, perl is awesome!!";
print (length $var ," characters conted....");
print "\n";
my $var2 = "Pop";
if ($var2 eq 'Pop'){
print "Matched...\n";
}
print "*****************************\n";
print (uc $var2,"\n");
print "*****************************";
print (lc $var2,"\n");
print "*****************************\n";
my $long_sentence = "Hello how are you my boy";
my @split_sentence =  split / /, $long_sentence;
print (@split_sentence[0, 1, 2]);
print "*****************************\n";
my $join_sentence = join ",", @split_sentence;
print ($join_sentence);
print "*****************************\n";
my $vowels =~ tr/"$join_sentence"/aeiou/;
print $vowels;