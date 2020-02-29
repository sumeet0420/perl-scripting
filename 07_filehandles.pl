#!/usr/bin/perl

# 6 Special Filehandles STDIN, STDPUT, STDERR, ARGV, DATA, ARGVOUT
# STDIN - 0 "<"
# STDOUT - 1 ">"
# STDERR - 2

# open INPUT,'file'
# open OUTPUT,'file'
# close file

($amount_to_be_paid, $full_amount) = &getInfo;
print "$amount_to_be_paid is the interest to be paid with $full_amount as full amount";

sub getInfo {
print "What is the principal amount?\n";
chomp ($principal = <STDIN>);
print "What is the rate of interest?\n";
chomp ($rate = <STDIN>);
print "What is the time in years?\n";
chomp ($time = <STDIN>);

$amount = $principal * $rate * $time/100;
return $amount, $amount+$principal;
}