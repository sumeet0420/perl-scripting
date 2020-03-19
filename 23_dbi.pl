#!usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
use DBI;

sub main{
#my $dbh = DBI -> connect("dbi:mysql:bands");
#unless (defined ($dbh)){die "Unable to connect to database"};
#my $sql = "insert into bands (name, age) values (?)";
my $dbh = DBI -> connect("dbi:mysql:bands") or die "Unable to connect to database";
my $sql = "select name, age from school";
my $sth = $dbh -> prepare($sql);

unless $sth { die "Error preparing Statement"};

unless($sth->execute($name)){
die "Error executing SQL query...\n";
};

#while (my $row = $sth ->fetchrow_hasrefref()){
#print "My name is ".$row ->{'name'}." and age is ".$row->{'age'};
#}
$data = $sth ->fetchrow_arrayref();
foreach $data(@$data){
($name, $age) = @$data;
print "My name is $name and age is $age";
}
#print "My name is ".$row->{'name'}." and age is ".$row->{'age'};
}
$sth->finish();
$dbh->disconnect();
}

main();