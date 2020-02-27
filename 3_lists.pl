#!/usr/bin/perl;
#Lists defined in () with comma separated values...
#Lists can also be defined using qa
#Lists can also be range operations
#Push and pop...push values onto, pop values off of the end (highest index value) of the array
# Shift and unshift - Push values onto and pop values off of the beginning
($mom,$dad,$son) = ("Bill","Sarah","Johnny");
print "$mom, $dad";
@family=qw(Bill Sarah Johnny);
print "\n@family[0]";
@numbers = (1,2,3,4,5);
@numbers2 = qw(1 2 3 4 5);
@numbers3=1..32;
print "\n@numbers3";
print "\n@numbers[2]";
#Push and Pop
push @numbers, 2;
print "@numbers";
$remove = pop @numbers;
print "\nRemoved Value - $remove";
print "\nBefore Unshifted Value @numbers";
unshift @numbers, 35;
print "\nUnshifted Value @numbers";
print "\nSplices...";
splice @numbers, 2;
print "\n@numbers";
print "\nLast Element Index...$#numbers3";
push @numbers3,"hello";
print "\nLast Element At Index $#numbers3 is $numbers3[$#numbers3]";
@reverse_numbers = reverse @numbers;
print "\n@reverse_numbers";
@sort_numbers = sort @numbers;
print "\n@sort_numbers";


#Foreach and each

foreach $number(1..8){
print "\n$number";
}

while (($index, $num)= each @numbers){
print "\n$index $num";
}