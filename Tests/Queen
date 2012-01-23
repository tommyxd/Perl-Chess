#!/usr/bin/perl -w

# Testing the Queen.pm module.

use strict;
use Test::Simple tests => 2;
use Chess::Piece::Queen;

my $white_queen = Chess::Piece::Queen->new('d1' => 'white');
my $black_queen = Chess::Piece::Queen->new('d8' => 'black');

ok $white_queen, 'creates a queen.';
ok $black_queen, 'creates a queen.';
