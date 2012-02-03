#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Queen - A class, representing the Queen(Q) chess piece.

=head1 DESCRIPTION

A Queen is the most powerful chess piece.
Each player has only one Queen at the start of the game.
The Queen can move in any direction - forward, backward, sideways or diagonally, 
as long as there is no piece of her own blocking the way.
If there is an opponent's piece in the way - it can be captured.

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
use lib "E:/Sources/Perl/Perl-Chess/";
use parent qw/ Chess::Piece /; # Inherits from Chess::Piece.

sub type {
    my $self = shift;
    
    return 'Queen'
}

sub move {
    my $self = shift;
    
    my $destination = shift;
    my @valid_moves = $self->valid_moves;
    
    for my $square (@valid_moves) {
        $self->square($destination->file, $destination->rank)
            if ($square->file eq $destination->file and $square->rank == destination->rank);
    }
}

sub valid_moves {
    my $self = shift;
    
    my @valid_moves    = ();
    my $current_square = $self->square;
}

1;
