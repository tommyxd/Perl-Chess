#!/usr/bin/perl -w
=head1 NAME

Chess::Piece::Rook - A class, representing the Rook(R) chess piece.

=head1 SYNOPSIS

my $rook = Chess::Piece->new('Rook');

my $square = Chess::Square->new();
$square->file('a');
$square->rank(1);

print $rook->type;
my @valid_squares = $rook->valid_squares;
$rook->move($square);

=head1 DESCRIPTION

The Rook may move as far as it wants, but only forward, backward and to the sides.
The Rook can capture an enemy piece in his range.
The Rook moves exclusively during castling, where it jumps over the King and places itself right next to him.

=head1 METHODS

=head2 Construction

=item new()

Inherited from Chess::Piece.

my $rook = Chess::Piece->new('Rook');

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item type

Returns the type of the Chess::Piece.
Takes no arguments.

print $rook->type; # Rook

=item move

Takes one argument, the square where the piece should move.
Moves the piece to the selected square, if the square is valid.

my $a8 = Chess::Square->new();
$a8->file('a');
$a8->rank(8);

$rook->move($a8);

=item valid_moves

Takes no arguments.
Returns a list of all reachable Chess::Squares for the piece.

=head1 AUTHOR
Tomislav Dyulgerov

=cut
package Chess::Piece::Rook;
use strict;
use lib "E:/Sources/Perl/Perl-Chess/";
use parent qw/ Chess::Piece /; # Inherits from Chess::Piece.

sub type {
    my $self = shift;
    
    return 'Rook';
}

sub move {
    my $self = shift;
    
    my $destination = shift;
    my @valid_squares = $self->valid_squares;
    
    for my $square (@valid_squares) {
        $self->square($destination->file, $destination->rank)
            if ($square->file eq $destination->file and $square->rank == destination->rank);
    }
}

sub valid_squares {
    my $self = shift;
    
    my @valid_squares    = ();
    my $current_square = $self->square;
}

1;