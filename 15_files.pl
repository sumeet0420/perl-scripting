#!/usr/bin/perl

use strict;

#Below code will create file name testfile and if it exists increment by 1;
my $i;
$i++ while(-e "testfile$i");
#Alternative but longer way....
#while(-e "testfile$i"){
#$i++;
#}

open FILE, ">testfile$i" or die "Unable to create a testfile$1 file...";
print "Useful file test\n -r -e - -f -d -M\n";
print FILE "This is a test data\n";
foreach my $file(@ARGV){
open "FILE", $file;
while(<FILE>){
	my $filename = <FILE>;
	chomp $filename;
	(-f $filename) ? print "$filename file exists...\n" : print  "$filename doesn't exists\n";
}
print "\n";
}