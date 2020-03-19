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

my $index_var = "hellodslfpoisdf";
my $first = index($index_var,"l");
my $last = rindex($index_var,"l");
print $first, ", ",$last, "\n";
my $substring =  substr $index_var, 0,5;
print "$substring";
my $num = "32";
print int $num+78;
print "\n";
my $reset = "They are also
ready broo
hkj
";
print "$reset";

my $quote = qq<"Ouch", he said. "That hurt!">;
my $reminder = q^Don't escape the single quote!^;
my $reminder2 = q/Don't escape the single quote and a new delimiter/;
my $complaint = q{It's too early to be awake.};
local $,="\n";
print ($quote, $reminder, $complaint, $reminder2);