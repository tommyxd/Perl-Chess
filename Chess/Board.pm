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
    my $self = shift;
    
    for my $file ('a'..'h') {
        for my $rank (1..8) {
            if ($rank == 2 or $rank ==7) {
                my $pawn = Chess::Piece->new('Pawn');
                $pawn->square($file, $rank);
                $rank == 2 ? $pawn->color('white') : $pawn->color('black');
                
                push $self->{PIECES}, $pawn;
            }
            if ($rank == 1 or $rank == 8) {
                if ($file eq 'a' or $file eq 'h') {
                    my $rook = Chess::Piece->new('Rook');
                    $rook->square($file, $rank);
                    $rank == 1 ? $rook->color('white') : $rook->color('black');
                    
                    push $self->{PIECES}, $rook;
                }
                if ($file eq 'b' or $file eq 'g') {
                    my $knight = Chess::Piece->new('Knight');
                    $knight->square($file, $rank);
                    $rank == 1 ? $knight->color('white') : $knight->color('black');
                    
                    push $self->{PIECES}, $knight;
                }
                if ($file eq 'c' or $file eq 'f') {
                    my $bishop = Chess::Piece->new('Bishop');
                    $bishop->square($file, $rank);
                    $rank == 1 ? $bishop->color('white') : $bishop->color('black');
                    
                    push $self->{PIECES}, $bishop;
                }
                if ($file eq 'd') {
                    my $queen = Chess::Piece->new('Queen');
                    $queen->square($file, $rank);
                    $rank == 1 ? $queen->color('white') : $queen->color('black');
                    
                    push $self->{PIECES}, $queen;
                }
                if ($file eq 'e') {
                    my $king = Chess::Piece->new('King');
                    $king->square($file, $rank);
                    $rank == 1 ? $king->color('white') : $king->color('black');
                    
                    push $self->{PIECES}, $king;
                }
            }
        }
    }
}

sub initialize {
    my $self = shift;
    
    $self->empty_board;
    $self->initial_board;
}

sub squares {
    my $self = shift;
    
    return $self->{SQUARES};
}

sub pieces {
    my $self = shift;
    
    return $self->{PIECES};
}

# Gets a square as a parameter.
# Returns the piece located on that square or undef.
sub get_piece_from_square {
    my $self = shift;
    
    my $square = shift;
    my @pieces = @{$self->pieces};
    
    for my $piece (@pieces) {
        return $piece if ($piece->square->file eq $square->file and $piece->square->rank eq $square->rank);
    }
}

# Displays the current state of the board.
sub display_board {
    my $self = shift;
    
    for my $rank (reverse 1..8) {
        print "\t" x 2 . "$rank "; # Displays ranks at the side.
        # Print out the pieces. Print a dot(.) if the square is unoccupied.
        for my $file ('a'..'h') {
            my $square = Chess::Square->new();
            $square->file($file);
            $square->rank($rank);
            
            my $piece = $self->get_piece_from_square($square);
            my $piece_notation = substr $piece->type, 0, 1 if ($piece);
            $piece_notation =
                $piece->color eq 'white' ? $piece_notation : lc $piece_notation if ($piece);
            
            $piece ? print $piece_notation : print ".";
            print $file eq 'h' ? "\n" : "  ";
        }
    }
    print "\t" x2 . "  ";
    print $_ . "  " for ('a'..'h');
}

1;