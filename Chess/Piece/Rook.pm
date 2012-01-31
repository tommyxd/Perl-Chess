#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Rook - A class, representing the Rook(R) chess piece.

=head1 DESCRIPTION

The Rook may move as far as it wants, but only forward, backward and to the sides.
The Rook can capture an enemy piece in his range.
The Rook moves exclusively during castling, where it jumps over the King and places itself right next to him.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Piece::Rook class.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item

=head1 AUTHOR
Tomislav Dyulgerov

=cut
package Chess::Piece::Rook;
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