#!usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
use File::Copy;

sub main{

copy('18_Copy.pl','18_Copy2.pl');
my @files = `dir /b`;
my @find_words = `find /c "189-point" words.txt`;
print Dumper(@files);
print Dumper(@find_words);
}
main();