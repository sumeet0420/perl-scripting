#!/usr/bin/perl;
#use strict;
use warnings;

#Defining Arguments
sub add {
print "All values in scalar - @_\n";
print "First Item - $_[0]\n";
print "Last Index - $#_\n";
my $size = scalar @_;
print "Number of arguments - $size\n";
my $sum_all=0;
for my $num(@_){
$sum_all+=$num;
}

return $sum_all;
}

sub odd_numbers_print {
my $start_num = shift @_;
my $end_num = shift @_;
while($start_num<=$end_num){
if ($start_num%2!=0){
print $start_num."\n";
}
$start_num++;
}
}

print "******************\n";
print &add(10, 20, 30)."\n";
print "******************\n";
&odd_numbers_print(20,50);
print "******************\n";
@odd_numbers_list = &odd_numbers_list(25, 90);
print "@odd_numbers_list\n";
print "******************\n";
sub odd_numbers_list {
my @odd_numbers;
my $start_num = shift @_;
my $end_num = shift @_;
while($start_num<=$end_num){
if ($start_num%2!=0){
push @odd_numbers, $start_num;
}
$start_num++;
}
return @odd_numbers;
}