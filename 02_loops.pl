#!/usr/bin/perl;
#Loops
#use strict;
#use warnings;

print "Enter anything other than 'q'...\n";
chomp ($num1 = <STDIN>);
if($num1 eq 'q') {
exit;
} else {
print "$num1";
}

# Comparison Operators
print "\nlt -> less than...";
print "\nle -> less than or equal to...";
print "\ngt -> greater than...";
print "\nge -> greater than or equal to....";
print "\neq -> equal to....";
print "\nne -> not equal to.....";
print "\nA scalar value is true if it is non-zero; only a 0 is false. A string is true unless it's the empty string, i.e. '' or '0'...";

print "\nWhile Loops...";

print "defined function can be used to find if a variable is defined or not.." 
while("$num2" ne "q"){
print "\nTo exit, type 'q'";
chomp ($num2 = <STDIN>);
print "$num2";
}
print "elsif and or in loops, undefined"