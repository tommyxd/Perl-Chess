#!/usr/bin/perl -w

# Testing the King.pm module.

use strict;
use Test::More tests => 2;
use Chess::Piece::King;

my $white_king = Chess::Piece::King->new('e1' => 'white');
my $black_king = Chess::Piece::King->new('e8' => 'black');

ok $white_king, 'creates a king.';
ok $black_king, 'creates a king.';
