#!/usr/bin/perl
#Perl variables...
$| = 1;
# '$\' can be used to change print to println... Also called $OUTPUT_RECORD_SEPARATOR 
local $\ = "\n";
print "hello";
print "hello";

# '$/' can be used to change the chomp functionality... Also called $INPUT_RECORD_SEPARATOR 
$/=" ";
$_ = "hello chomp ";
chomp;
print;
print length;
print "************************";
# '$"' can be used to change the list separator...
@array = (1..3);
local $" = ",";
print "@array";

# $0 prints script_name
print "$0";
# $, is the output field separator
#print "one","two"
# one-two

$, = "-";
print "one", "two";
#system "dir <<list.txt";
#system "type list.txt";

#Quote-Like Operator
# q// ''=> Single Quotes
# qq// ""=> Double Quotes
# qw // using space as split
# qx // using as executable commands
print "*************Trim functionality**********************";
$_="    hello world      ";
s/^\s+|\s+$//g;
print length;
print;