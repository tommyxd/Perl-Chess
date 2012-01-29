#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Knight - A class, representing the Knight(N) chess piece.

=head1 DESCRIPTION

Each player has two Knights in the beginning of the game.
The Knight moves in the shape of the letter L - two squares in one direction, and then one more move at a 90 degree angle.
Knights are the only pieces that can jump over other pieces.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Piece::Knight class.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item 

=head1 AUTHOR
Tomislav Dyulgerov

=cut
package Chess::Piece::Knight;
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