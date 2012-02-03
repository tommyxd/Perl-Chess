#!/usr/bin/perl -w

# Testing the Pawn.pm module.

use strict;
use Test::More tests => 5;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Piece;

my $white_pawn = Chess::Piece->new('Pawn');
my $black_pawn = Chess::Piece->new('Pawn');

ok $white_pawn, 'creates a pawn.';
ok $black_pawn, 'creates a pawn.';

ok (($white_pawn->type eq 'Pawn' and $black_pawn->type eq 'Pawn'), 'prints the right type.');

$white_pawn->square('h', 2, 'dark');

my $dest = Chess::Square->new();
$dest->file('h');
$dest->rank(4);

$white_pawn->move($dest);

ok $white_pawn->square->file eq 'h', 'the pawn has moved.';
ok $white_pawn->square->rank == 4, 'the pawn has moved.';