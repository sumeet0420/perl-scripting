#!/usr/bin/perl;
use strict;
use warnings;
use Data::Dumper;
#Use for getting Command line arguments..
use Getopt::Std;
use XML::Simple;
use JSON;
#Use for output buffering
$|=1;

sub main(){
my $input_file = 'input.json';
open (INPUTFILE, $input_file) or die "File not found or unable to open the file..";
undef $/;
my $json = <INPUTFILE>;
close(INPUTFILE);
my $decoded_json = decode_json($json);
print Dumper $decoded_json;
}

main();