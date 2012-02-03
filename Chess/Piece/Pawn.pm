#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Pawn - A class, representing the Pawn(P) chess piece.

=head1 SYNOPSIS

my $pawn = Chess::Piece->new('Pawn');

print $pawn->type;
my $e8 = Chess::Square->new();
$e8->file('e');
$e8->rank(8);
my @valid_squares = $pawn->valid_squares;
$pawn->move($e8);
$pawn->promote;

=head1 DESCRIPTION

Pawns are unusual, because they move and capture in different ways: they move forward, but capture diagonally.
Pawns can only move forward one square at a time, except for their very first move where they can move forward two squares.
Pawns only capture one square diagonally in front of them.
They can never move or capture backwards.
A Pawn can promote itself to a Knight(N), Bishop(B), Rook(R) or Queen(Q) when it reaches the other side of the board.

=head1 METHODS

=head2 Construction

=item new()

Inherited from Chess::Piece.

my $pawn = Chess::Piece->new('Pawn');

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item type

Returns the type of the Chess::Piece.
Takes no arguments.

print $pawn->type; # Pawn

=item move

Takes one argument, the square where the piece should move.
Moves the piece to the selected square, if the square is valid.

my $e4 = Chess::Square->new();
$e4->file('e');
$a4->rank(4);

$pawn->move($a4);

=item valid_squares

Takes no arguments.
Returns a list of all reachable Chess::Squares for the piece.

=item promote

Takes no arguments.
A pawn can become one of the following pieces if it reaches the 8th rank.
The user is prompted to enter the letter notation of the piece the pawn will become.
* N - Knight;
* B - Bishop;
* R - Rook;
* Q - Queen;

=head1 AUTHOR

Tomislav Dyulgerov

=cut
package Chess::Piece::Pawn;
use strict;
use lib "E:/Sources/Perl/Perl-Chess/";
use parent qw/ Chess::Piece /; # Inherits from Chess::Piece.

sub type {
    my $self = shift;
    
    return 'Pawn';
}

sub move {
    my $self = shift;
    
    my $destination = shift;
    my @valid_squares = $self->valid_squares;
    
    
    for my $square (@valid_squares) {
        $self->square($destination->file, $destination->rank)
            if ($square->file eq $destination->file and $square->rank == $destination->rank);
    }
}

# Returns a list of Chess::Squares
sub valid_squares {
    my $self = shift;
    
    my @valid_squares    = ();
    my $current_square = $self->square;
}

sub promote {
    my $self = shift;
    
    if ($self->square->rank == 8) {
        print "Select piece type:\n";
        print "N - Knight; B - Bishop; R - Rook; Q - Queen\n";
        chomp (my $decision = <STDIN>);
        $self = Chess::Piece->new('Knight') if ($decision =~ /n/i);
        $self = Chess::Piece->new('Bishop') if ($decision =~ /b/i);
        $self = Chess::Piece->new('Rook')   if ($decision =~ /r/i);
        $self = Chess::Piece->new('Queen')  if ($decision =~ /q/i);
    }
}

1;