#!/usr/bin/perl -w

# Testing the Knight.pm module.

use strict;
use Test::More tests => 5;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Piece;

my $white_knight = Chess::Piece->new('Knight');
my $black_knight = Chess::Piece->new('Knight');

ok $white_knight, 'creates a knight.';
ok $black_knight, 'creates a knight.';

ok (($white_knight->type eq 'Knight' and $black_knight->type eq 'Knight'), 'prints the right type.');

$white_knight->square('b', 1, 'dark');

my $dest = Chess::Square->new();
$dest->file('c');
$dest->rank(3);

$white_knight->move($dest);

ok $white_knight->square->file eq 'c', 'the knight has moved.';
ok $white_knight->square->rank == 3, 'the knight has moved.';