#!/usr/bin/perl

use Authen::OATH;
use Convert::Base32;
use Data::Dumper;

my $oath = Authen::OATH->new();
print "\n\n";
while (<>) {
        my @input = split(";", $_);
        chomp(@input[1]);
        printf("%-30s %-10s\n", @input[0], $oath->totp( decode_base32( @input[1] ) ) );
}
print "\n\n";
