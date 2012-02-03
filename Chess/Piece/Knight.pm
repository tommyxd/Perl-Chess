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
use lib "E:/Sources/Perl/Perl-Chess/";
use parent qw/ Chess::Piece /; # Inherits from Chess::Piece.

sub type {
    my $self = shift;
    
    return 'Knight';
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