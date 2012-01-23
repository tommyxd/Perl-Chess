#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Pawn - A class, representing the Pawn(P) chess piece.

=head1 DESCRIPTION

Pawns are unusual, because they move and capture in different ways: they move forward, but capture diagonally.
Pawns can only move forward one square at a time, except for their very first move where they can move forward two squares.
Pawns only capture one square diagonally in front of them.
They can never move or capture backwards.
A Pawn can promote itself to a Knight(N), Bishop(B), Rook(R) or Queen(Q) when it reaches the other side of the board.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Piece::Pawn class.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item

=head1 AUTHOR

Tomislav Dyulgerov

=cut
package Chess::Piece::Pawn;
use strict;

# Inherits from Chess::Piece.
our @ISA = ("Chess::Piece");

# Constructor method stub.
sub new {
    my $class = shift;
    my $self  = {};
    # TODO: Implement actual pawn object construction.
    bless $self, $class;
    return $self;
}

1;