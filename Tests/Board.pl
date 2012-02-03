#!/usr/bin/perl -w

# Testing the Board.pm module.
use strict;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Board;
use Chess::Square;

my $board = Chess::Board->new();
$board->initialize();

my $e2 = Chess::Square->new();
$e2->file('e');
$e2->rank(2);

my $e7 = Chess::Square->new();
$e7->file('e');
$e7->rank(7);

my $white_pawn = $board->get_piece_from_square($e2);
my $black_pawn = $board->get_piece_from_square($e7);

my $e4 = Chess::Square->new();
$e4->file('e');
$e4->rank(4);

my $e5 = Chess::Square->new();
$e5->file('e');
$e5->rank(5);

$white_pawn->move($e4);
$black_pawn->move($e5);
$board->display_board;