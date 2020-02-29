#!/usr/bin/perl

#Defining Dictionary
%dictionary = (key1,"value1",key2,"value2");
%dictionary2 =(fruit=>'Apple',fb=>'facebook');

#Unwind hash
@list = %dictionary;
@list_reverse = reverse %dictionary;

print keys %dictionary;
print "\n";

print "**************************\n";
for $element(@list){
print "$element\n";
}
print "**************************\n";

while (($key, $value) = each %dictionary){
print "$key, $value\n";
}

print "**************************\n";

delete $dictionary{key1};
