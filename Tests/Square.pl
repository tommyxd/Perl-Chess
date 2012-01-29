#!/usr/bin/perl -w

# Testing the Square.pm module.

use strict;
use Test::More tests => 2;
use Chess::Square;

my $square = Chess::Square->new();
$square->file('A');
my $file = $square->file;

ok $file eq 'A', "Square's file is equal to the expected value.";
ok $file ne 'C', "Square's file is not equal to the incorrect value.";