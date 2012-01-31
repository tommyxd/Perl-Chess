#!/usr/bin/perl -w
=head1 NAME

Chess::Board - The class, representing the chess board.

=head1 DESCRIPTION

The class presents the chess board itself and also each piece's position on it.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Board class.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item

=head1 AUTHOR

Tomislav Dyulgerov

=cut
package Chess::Board;
use strict;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Piece;
use Chess::Square;

# Constructor method stub.
sub new {
    my $class = shift;
    my $self  = {};
    
    $self->{SQUARES} = [];
    $self->{PIECES}  = [];
    
    bless $self, $class;
    return $self;
}

# Initializes an empty board.
sub empty_board {
    my $self = shift;
    for my $rank (reverse 1..8) {
        for my $file ('a'..'h') {
            my $square = Chess::Square->new();
            
            my $color = (($rank % 2 == 0 and $file =~ /[aceg]/i) or
                         ($rank % 2 != 0 and $file =~ /[bdfh]/i))
                         ? 'light' : 'dark';
            
            $square->file($file);
            $square->rank($rank);
            $square->color($color);
            
            push $self->{SQUARES}, $square;
        }
    }
}

# Returns the starting board for a chess game.
sub initial_board {
    
}

# Displays the current state of the board.
sub display_board {
    for my $i (reverse 1..8) {
        print "\t" x 2 . "$i "; # Displays ranks at the side.
        for my $j (1..8) {
            print "." . ($j == 8 ? "\n" : "  ");
        }
    }
    print "\t" x 2 . "  ";
    # Display files at the bottom.
    for ('a'..'h') {
        print $_ . "  "
    }
}

1;