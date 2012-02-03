#!/usr/bin/perl -w

# Testing the Rook.pm module.

use strict;
use Test::More tests => 5;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Piece;

my $white_rook = Chess::Piece->new('Rook');
my $black_rook = Chess::Piece->new('Rook');

ok $white_rook, 'creates a rook.';
ok $black_rook, 'creates a rook.';

ok (($white_rook->type eq 'Rook' and $black_rook->type eq 'Rook'), 'prints the right type.');

$white_rook->square('h', 1, 'light');

my $dest = Chess::Square->new();
$dest->file('h');
$dest->rank(8);

$white_rook->move($dest);

ok $white_rook->square->file eq 'h', 'the rook has moved.';
ok $white_rook->square->rank == 8, 'the rook has moved.';