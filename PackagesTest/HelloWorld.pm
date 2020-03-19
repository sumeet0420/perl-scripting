package PackagesTest::HelloWorld;

use Exporter qw (import);
@EXPORT_OK = qw(greet);

sub greet{
local $\="\n";
print "Hello World from HelloWorld";
};

1;