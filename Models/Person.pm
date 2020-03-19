package Models::Person;

use strict;
use warnings;

sub new {
	my $class = shift;
	my $self = {
	"name" => shift,
	"age" => shift
	};
	
	bless ($self, $class);
	return $self;
}

sub greet{
#my($self, $other) = @_;
my $self = shift;
my $other = shift;
local $\="\n";
print "Hello $other. My name is ". $self->{"name"}." and age is ".$self->{"age"}.". How are you?"
}
1;