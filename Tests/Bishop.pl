#!/usr/bin/perl -w

# Testing the Bishop.pm module.

use strict;
use Test::More tests => 5;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Piece;

my $white_bishop = Chess::Piece->new('Bishop');
my $black_bishop = Chess::Piece->new('Bishop');

ok $white_bishop, 'creates a bishop.';
ok $black_bishop, 'creates a bishop.';

ok (($white_bishop->type eq 'Bishop' and $black_bishop->type eq 'Bishop'), 'prints the right type.');

$white_bishop->square('c', 1, 'light');

my $dest = Chess::Square->new();
$dest->file('e');
$dest->rank(3);

$white_bishop->move($dest);

ok $white_bishop->square->file eq 'e', 'the bishop has moved.';
ok $white_bishop->square->rank == 3, 'the bishop has moved.';