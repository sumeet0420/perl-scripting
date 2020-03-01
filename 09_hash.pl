#!/usr/bin/perl

#Defining Dictionary
%dictionary = (key1,"value1",key2,"value2");
%dictionary2 =(fruit=>'Apple',fb=>'facebook');

%dict_speciality = (1..100);

print "**************************\n";
while (($key, $value) = each %dict_speciality){
print "$key, $value\n";
}

print "**************************\n";

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
print "$dictionary{'key1'} is a scalar value...\n";
print "@dictionary{'key1','key2'} are values in a single string interpolation using slicing...\n";
delete $dictionary{key1};