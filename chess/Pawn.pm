#!/usr/bin/perl -w
# A class representing the pawn chess piece.
# A pawn can move one square at a time, or twice if it's its first move.
# A pawn captures pieces one square diagonally(only forward).
# A pawn can promote itself to a Knight(N), Bishop(B), Rook(R) or Queen(Q).
package Pawn;
use strict;

# Constructor method stub.
sub new {
    my $class = shift;
    my $self  = {};
    # TODO: Implement actual pawn object construction.
    bless $self, $class;
    return $self;
}

1;
