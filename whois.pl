use Net::Whois::Raw;
use Cwd;
use strict;
binmode STDOUT, ":utf8";

if($ARGV[0] =~ /-h/){
    my $dir = getdcwd();
    print "perl-command-line-whois"
         ."\nview whois information for given domain"
         ."\nUsage: $dir\\whois.pl [option] [domain]"
         ."\n\t-h\t\tthis help menu"
         ."\n\t-o\t\tquery whois information for domain.  e.g. whois.pl -o ycombinator.org";
    exit;
} 

if($ARGV[0] =~ /-o/){
    my $domainInfo= whois($ARGV[1]);
    print $domainInfo;
}
