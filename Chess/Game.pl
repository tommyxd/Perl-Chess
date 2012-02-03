#!/usr/bin/perl -w
use strict;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Board;

my $board = Chess::Board->new();
$board->initialize();

print "Welcome to Perl-Chess!\n";
print "Have a nice game." . "\n" x 2;

my $move_count = 1;
while (1) {
    $board->print;
    my $player_to_move = $move_count % 2 == 0 ? 'Black' : 'White';
    print "$player_to_move to move.\n";
    print "Enter your move: ";
    chomp (my $move = <STDIN>);
    print "\n";
    $move =~ /([a-h]\d)\s([a-h]\d)/;
    my $source_square = $1;
    my $dest_square   = $2;
    
    my $current_square = Chess::Square->new();
    $current_square->create_square($source_square);
    
    my $destination = Chess::Square->new();
    $destination->create_square($dest_square);
    
    my $piece = $board->get_piece_from_square($current_square);
    $piece->move($destination);
    
    #print "move from $source_square to $dest_square.\n";
    $move_count++;
    
    #print "CHECK!\n" if (check());
    #if (checkmate()) {
    #    my $player = who_won();
    #    print "$player won by checkmate!";
    #    last;
    #}
    #if (stalemate()) {
    #    print "Game drawn.";
    #    last;
    #}
}