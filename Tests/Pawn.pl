#!/usr/bin/perl -w

# Testing the Pawn.pm module.

use strict;
use Test::Simple tests => 2;
use Chess::Piece::Pawn;

my $white_pawn = Chess::Piece::Pawn->new('e2' => 'white');
my $black_pawn = Chess::Piece::Pawn->new('e7' => 'black');

ok $white_pawn, 'creates a pawn.';
ok $black_pawn, 'creates a pawn.';
