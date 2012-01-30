#!/usr/bin/perl -w

# Testing the Square.pm module.

use lib "E:/Sources/Perl/Perl-Chess/";
use strict;
use Test::More tests => 7;
use Chess::Square;

my $square = Chess::Square->new();

$square->file('A');
my $file = $square->file;

ok $file eq 'a', "Square's file is equal to the expected value.";
ok $file ne 'C', "Square's file is not equal to an incorrect value.";
ok $file ne 'A', "Square's file is converted to lowercase.";

$square->rank(3);
my $rank = $square->rank;

ok $rank eq 3, "Square's rank is equal the expected value";
ok $rank ne 4, "Square's rank is not equal to an incorrect value";

$square->color('Light');
my $light_square = $square->color;

my $second_square = Chess::Square->new();

$second_square->color('dARk');
my $dark_square = $second_square->color;

ok $light_square eq 'light', "This is a light squre";
ok $dark_square  eq 'dark',  "This is a dark square";