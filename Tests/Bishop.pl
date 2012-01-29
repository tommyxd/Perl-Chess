#!/usr/bin/perl -w

# Testing the Bishop.pm module.

use strict;
use Test::More tests => 2;
use Chess::Piece::Bishop;

my $white_bishop = Chess::Piece::Bishop->new('c1' => 'white');
my $black_bishop = Chess::Piece::Bishop->new('c8' => 'black');

ok $white_bishop, 'creates a bishop.';
ok $black_bishop, 'creates a bishop.';
