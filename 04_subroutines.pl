#!/usr/bin/perl;
#use strict;
use warnings;

#Defining Arguments
local $\="\n";
sub add {
print "All values in scalar - @_";
print "First Item - $_[0]";
print "Last Index - $#_";
my $size = scalar @_;
print "Number of arguments - $size";
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
print $start_num;
}
$start_num++;
}
}

print "******************";
print &add(10, 20, 30);
print "******************";
&odd_numbers_print(20,50);
print "******************";
@odd_numbers_list = &odd_numbers_list(25, 90);
print "@odd_numbers_list";
print "******************";
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

print "**************************Sort***************\n";
sub by_num {if ($a<$b){1} elsif ($a>$b) {-1} else {0} }

sub by_num2{$a<=>$b}

sub by_char{$a cmp $b}
print "<=> called spaceship operator...";
print 2<=>3;