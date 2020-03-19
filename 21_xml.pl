#!/usr/bin/perl;
use strict;
use warnings;
use Data::Dumper;
#Use for getting Command line arguments..
use Getopt::Std;
use XML::Simple
#Use for output buffering
$|=1;

sub main(){
my $input_file = 'input.xml';
open (INPUTFILE, $input_file) or die "File not found or unable to open the file..";
undef $/;
my $content = <INPUTFILE>;
print $content;
=pod
while(<INPUTFILE>){
print;
}
=cut
close(INPUTFILE);
print "\n************************************\n";
my $parser = new XML::Simple;
my $dom = $parser->XMLin($content,ForceArray => [ 'albums'] ); #ForceContent=>['name'] ,ForceContent=>{album=>'name'}
#my $xml = $parser->XMLout($dom);
print "************************************\n";
print Dumper($dom);
print "\n";
print "XML ARRAY..\n";
print Dumper($dom->{'note'}->[1]->{'to'});
}
main();