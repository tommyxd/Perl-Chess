#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::King - A class, representing the King(K) chess piece.

=head1 SYNOPSIS

my $king = Chess::Piece->new('King');

print $king->type;
my $d1 = Chess::Square->new();
$d1->file('d');
$d1->rank(1);
my @valid_squares = $king->valid_squares;
$king->move($d1);

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

Inherited from Chess::Piece.

my $king = Chess::Piece->new('King');

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item type

Returns the type of the Chess::Piece.
Takes no arguments.

print $king->type; # King

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
package Chess::Piece::King;
use strict;
use lib "E:/Sources/Perl/Perl-Chess/";
use parent qw/ Chess::Piece /; # Inherits from Chess::Piece.

sub type {
    my $self = shift;
    
    return 'King';
}

sub move {
    my $self = shift;
    
    my $destination = shift;
    #my @valid_squares = $self->valid_squares;
    
    #for my $square (@valid_squares) {
        $self->square($destination->file, $destination->rank)
            #if ($square->file eq $destination->file and $square->rank == $destination->rank);
    #}
}

sub valid_squares {
    my $self = shift;
    
    my @valid_squares  = ();
    my $current_square = $self->square;
}

1;