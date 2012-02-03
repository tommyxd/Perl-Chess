#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Bishop - A class, representing the Bishop(B) chess piece.

=head1 SYNOPSIS

my $bishop = Chess::Piece->new('Bishop');

print $bishop->type;
my $d3 = Chess::Square->new();
$d3->file('d');
$d3->rank(3);
my @valid_squares = $bishop->valid_squares;
$bishop->move($d3);

=head1 DESCRIPTION

Each player has two Bishops in the beginning of the game.
Bishops move along diagonals.
Because of their diagonal movement, they can only move to or attack squares of their initial colour.
Therefore there's a light squared bishop and a dark squared bishop.

=head1 METHODS

=head2 Construction

=item new()

Inherited from Chess::Piece.

my $bishop = Chess::Piece->new('Bishop');

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item type

Returns the type of the Chess::Piece.
Takes no arguments.

print $bishop->type; # Bishop

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
    # TODO: add square to array if valid.
    
    return @valid_squares;
}

1;