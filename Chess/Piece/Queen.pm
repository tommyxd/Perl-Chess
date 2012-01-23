#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Queen - A class, representing the Queen(Q) chess piece.

=head1 DESCRIPTION

A Queen is the most powerful chess piece.
Each player has only one Queen at the start of the game.
The Queen can move in any direction - forward, backward, sideways or diagonally, as long as there is no piece of her own blocking the way.
If there's an opponent's piece in the way - it can be captured.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Piece::Queen class.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item

=head1 AUTHOR
Tomislav Dyulgerov

=cut
package Chess::Piece::Queen;
use strict;

# Inherits from Chess::Piece.
our @ISA = ("Chess::Piece");

# Constructor method stub.
sub new {
    my $class = shift;
    my $self  = {};
    # TODO: Not implemented yet.
    bless $self, $class;
    return $self;
}

1;
