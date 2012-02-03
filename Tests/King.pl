#!/usr/bin/perl -w

# Testing the King.pm module.

use strict;
use Test::More tests => 5;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Piece;

my $white_king = Chess::Piece->new('King');
my $black_king = Chess::Piece->new('King');

ok $white_king, 'creates a king.';
ok $black_king, 'creates a king.';

ok (($white_king->type eq 'King' and $black_king->type eq 'King'), 'prints the right type.');

$white_king->square('E', 1, 'dark');

my $dest = Chess::Square->new();
$dest->file('d');
$dest->rank(1);

$white_king->move($dest);

ok $white_king->square->file eq 'd', 'the king has moved.';
ok $white_king->square->rank == 1, 'the king has moved.';