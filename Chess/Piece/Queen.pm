#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Queen - A class, representing the Queen(Q) chess piece.

=head1 SYNOPSIS

my $queen = Chess::Piece->new('Bishop');

print $queen->type;

my $d8 = Chess::Square->new();
$d8->file('d');
$d8->rank(8);

my @valid_squares = $queen->valid_squares;

$queen->move($d8);

=head1 DESCRIPTION

A Queen is the most powerful chess piece.
Each player has only one Queen at the start of the game.
The Queen can move in any direction - forward, backward, sideways or diagonally, 
as long as there is no piece of her own blocking the way.
If there is an opponent's piece in the way - it can be captured.

=head1 METHODS

=head2 Construction

=item new()

Inherited from Chess::Piece.

my $queen = Chess::Piece->new('Queen');

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item type

Returns the type of the Chess::Piece.
Takes no arguments.

print $queen->type; # Queen

=item move

Takes one argument, the square where the piece should move.
Moves the piece to the selected square, if the square is valid.

=item valid_squares

Takes no arguments.
Returns a list of all reachable Chess::Squares for the piece.

=head1 AUTHOR

Tomislav Dyulgerov

=head1 COPYRIGHT

Copyright (c) 2012 Tomislav Dyulgerov. All rights reserved.
This module is Free Software. It may be modified and redistributed under the same terms as Perl itself.

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
    #my @valid_squares = $self->valid_squares;
    
    #for my $square (@valid_squares) {
        $self->square($destination->file, $destination->rank)
            #if ($square->file eq $destination->file and $square->rank == $destination->rank);
    }
}

sub valid_squares {
    my $self = shift;
    
    my @valid_squares  = ();
    my $current_square = $self->square;
}

1;
