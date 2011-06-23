use Net::Whois::Raw;

my $domainInfo= whois($ARGV[0]);
print $domainInfo;
