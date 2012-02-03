#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Bishop - A class, representing the Bishop(B) chess piece.

=head1 DESCRIPTION

Each player has two Bishops in the beginning of the game.
Bishops move along diagonals.
Because of their diagonal movement, they can only move to or attack squares of their initial colour.
Therefore there's a light squared bishop and a dark squared bishop.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Piece::Bishop class.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item

=head1 AUTHOR

Tomislav Dyulgerov

=cut
package Chess::Piece::Bishop;
use strict;
use lib "E:/Sources/Perl/Perl-Chess/";
use parent qw/ Chess::Piece /; # Inherits from Chess::Piece.

sub type {
    my $self = shift;
    
    return 'Bishop';
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