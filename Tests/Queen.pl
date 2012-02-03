#!/usr/bin/perl -w

# Testing the Queen.pm module.

use strict;
use Test::More tests => 5;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Piece;

my $white_queen = Chess::Piece->new('Queen');
my $black_queen = Chess::Piece->new('Queen');

ok $white_queen, 'creates a queen.';
ok $black_queen, 'creates a queen.';

ok (($white_queen->type eq 'Queen' and $black_queen->type eq 'Queen'), 'prints the right type.');

$black_queen->square('d', 8, 'dark');

my $dest = Chess::Square->new();
$dest->file('d');
$dest->rank(1);

$white_queen->move($dest);

ok $white_queen->square->file eq 'd', 'the queen has moved.';
ok $white_queen->square->rank == 1, 'the queen has moved.';