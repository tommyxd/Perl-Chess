#!/usr/bin/perl -w

# Testing the Rook.pm module.

use strict;
use Test::More tests => 2;
use Chess::Piece::Rook;

my $white_rook = Chess::Piece::Rook->new('a1' => 'white');
my $black_rook = Chess::Piece::Rook->new('h8' => 'black');

ok $white_rook, 'creates a rook.';
ok $black_rook, 'creates a rook.';
