#!/usr/bin/perl -w

# Testing the Knight.pm module.

use strict;
use Test::Simple tests => 2;
use Chess::Piece::Knight;

my $white_knight = Chess::Piece::Knight->new('b1' => 'white');
my $black_knight = Chess::Piece::Knight->new('b8' => 'black');

ok $white_knight, 'creates a knight.';
ok $black_knight, 'creates a knight.';
