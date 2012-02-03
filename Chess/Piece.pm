#!/usr/bin/perl -w
=head1 NAME

Chess::Piece - The base class of all chess pieces.

=head1 SYNOPSIS

$piece1 = Chess::Piece->new();
$piece->square('A', 2);

$piece2 = Chess::Piece->new();
$piece2->square('E', 2, 'light');

$piece1->color('white');
print $piece1->color;

=head1 DESCRIPTION

A class, defining the common interface for all chess pieces.
Every chess piece inherits from this class.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Piece class.
Takes one parameters - what kind of piece to instantiate.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item square()

A getter/setter for the SQUARE property of a piece.
Called without parameters the method returns the current square that the piece is on.
Otherwise the method takes up to 3 parameters:
* the file of the square;
* the rank of the square;
* the color of the square(optional).

$piece->square('A', 2);
$piece->square('E', 2, 'Light');
$square = $piece->square;

=item color()

A getter/setter for the COLOR property of a piece.
Called without parameters the method returns the color of the piece.
If a single parameter is passed the $self->{COLOR} is set that string(either 'black' or 'white').

=item valid_moves()

This is an abstract method that must be overriden by any class that inherits from
Chess::Piece. Returns a list of Chess::Squares that the certain piece can reach.

=head1 AUTHOR

Tomislav Dyulgerov

=cut
package Chess::Piece;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Square;
use strict;

sub new {
    my $class = shift;
    my $self  = {};
    
    $self->{SQUARE} = Chess::Square->new();
    $self->{COLOR}  = undef;
    
    my $piece_type = shift; # What kind of piece to create.
    if ($piece_type) {
        $piece_type = "Chess::Piece::" . $piece_type;
        eval "use $piece_type";
        
        $self = $piece_type->new();
        
        bless $self, $piece_type;
        return $self;
    }
    else {
        bless $self, $class;
        return $self;
    }
}

sub square {
    my $self = shift;
    if (@_) {
        my ($file, $rank, $color) = @_;
        
        $self->{SQUARE}->file($file);
        $self->{SQUARE}->rank($rank);
        $self->{SQUARE}->color($color) if ($color); # Optional parameter.
    }
    
    return $self->{SQUARE};
}

sub color {
    my $self = shift;
    if (@_) {
        my $color = shift;
        if ($color =~ /(?:white|black)/i) {
            $self->{COLOR} = lc $color; # Converts the string to lowercase.
        }
        else {
            die "A piece's color can be either 'black' or 'white'.";
        }
    }
    
    return $self->{COLOR};
}

# Abstract method.
sub valid_moves {
    print "Call to the abstract method Chess::Piece::valid_moves().\n";
}

1;