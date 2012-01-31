#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::King - A class, representing the King(K) chess piece.

=head1 DESCRIPTION

The King is the most important piece, but is one of the weakest.
The King can only move one square in any direction.
The King may never move himself into check. (On a square where he could be captured).
The King can move exclusively two squares on each side during the castling.
Castling is only an option when:
* neither the King nor Rook has moved until this moment;
* when the square which the King skipps is not under attack by an enemy piece
* when the position of the King after the castling move is not in check.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Piece::King class.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item

=head1 AUTHOR
Tomislav Dyulgerov

=cut
package Chess::Piece::King;
use strict;
use lib "E:/Sources/Perl/Perl-Chess/";
use parent qw/ Chess::Piece /; # Inherits from Chess::Piece.

# Constructor method stub.
sub new {
    my $class = shift;
    my $self  = {};
    # TODO: Not implemented yet.
    bless $self, $class;
    return $self;
}

1;