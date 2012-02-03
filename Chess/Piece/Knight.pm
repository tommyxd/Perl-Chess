#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Knight - A class, representing the Knight(N) chess piece.

=head1 SYNOPSIS

my $knight = Chess::Piece->new('Knight');

print $knight->type;
my $c3 = Chess::Square->new();
$c3->file('c');
$c3->rank(3);
my @valid_squares = $knight->valid_squares;
$knight->move($c3);

=head1 DESCRIPTION

Each player has two Knights in the beginning of the game.
The Knight moves in the shape of the letter L - two squares in one direction, and then one more move at a 90 degree angle.
Knights are the only pieces that can jump over other pieces.

=head1 METHODS

=head2 Construction

=item new()

Inherited from Chess::Piece.

my $knight = Chess::Piece->new('Knight');

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item type

Returns the type of the Chess::Piece.
Takes no arguments.

print $knight->type; # Knight

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