#!/usr/bin/perl -l
# Usage: split_xao_key.pl <LONG_KEY>
my $tempStr = $ARGV[0];
die ("You didn't provide a key to split. Exiting.") if (!$tempStr);
my @keys = split / /,(join ' ', unpack '(A64)*', $tempStr);
print ("Public Spend Key: ",$keys[0]);
print ("Public View keys: ",$keys[1]);
print ("Private Spend Key: ",$keys[2]);
print ("Private View Key: ",$keys[3]);
