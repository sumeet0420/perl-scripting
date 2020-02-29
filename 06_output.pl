#!/usr/bin/perl

$color = "red";
$number = 900;
$float_num = 909998.9887;
$float_num2 = 98.9887;
printf "Wow with positive justified %12g and end...\n", $number;
printf "Wow with negative justified %-12g and end...\n", $number;
printf "Wow with string %s and end...\n", $color;
printf "Wow with floating format %4.2f and end...\n", $float_num;
printf "Wow with floating format %04.2f and end...\n", $float_num2;

open OUTPUT, ">", "hello.txt";
print OUTPUT "something will be inserted...";
print OUTPUT "well this too will be inserted...";
close OUTPUT;
open OUTPUT_APPEND, ">>", "new_append_hello.txt";
print OUTPUT_APPEND "WELL....";
