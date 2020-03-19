package PackagesTest::Modules;

use Exporter qw (import);

@EXPORT_OK = qw(test);
@EXPORT = qw(test);

sub test{
local $\="\n";
print "Hello World from Modules";
};

1;