#!/usr/bin/perl -w
=head1 NAME

Chess::Board - The class, representing the chess board.

=head1 SYNOPSIS



=head1 DESCRIPTION

The class presents the chess board itself and also each piece's position on it.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Board class.
Takes no arguments.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item empty_board

Initializes an empty board. All 64 squares are created and initalized.
No pieces, however.

=item initial_board

Returns the starting board for a chess game.
Populates the board with pieces.

=item initialize

Calls both Chess::Board::empty_board() and Chess::Board::initial_board()
in order to create a fully functional board.

=item squares

Getter for the SQUARES property of the board.
Takes no arguments.
The method returns a list of all Chess::Squares.

=item pieces

Getter for the PIECES property of the board.
Takes no arguments.
The method returns a list of all Chess::Pieces on the board.

=item get_piece_from_square

Takes a square as an argument.
Returns the piece located on that square, if one exists.

=item print

Displays the current state of the board.

=head1 AUTHOR

Tomislav Dyulgerov

=head1 COPYRIGHT

Copyright (c) 2012 Tomislav Dyulgerov. All rights reserved.
This module is Free Software. It may be modified and redistributed under the same terms as Perl itself.

=cut
package Chess::Board;
use strict;
use lib "E:/Sources/Perl/Perl-Chess/";
use Chess::Piece;
use Chess::Square;

sub new {
    my $class = shift;
    my $self  = {};
    
    $self->{SQUARES} = [];
    $self->{PIECES}  = [];
    
    bless $self, $class;
    return $self;
}

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

sub get_piece_from_square {
    my $self = shift;
    
    my $square = shift;
    my @pieces = @{$self->pieces};
    
    for my $piece (@pieces) {
        return $piece if ($piece->square->file eq $square->file and $piece->square->rank eq $square->rank);
    }
}

sub print {
    my $self = shift;
    
    for my $rank (reverse 1..8) {
        print "\t" x 2 . "$rank "; # Displays ranks at the side.
        # Print out the pieces. Print a dot(.) if the square is unoccupied.
        for my $file ('a'..'h') {
            my $square = Chess::Square->new();
            $square->file($file);
            $square->rank($rank);
            
            my $piece = $self->get_piece_from_square($square);
            # Each piece is represented by one of the characters: P, B, N, R, Q, K.
            # Pawn(P), Bishop(B), Knight(N), Rook(R), Queen(Q), King(K).
            my $piece_notation =
                $piece->type eq 'Knight' ? uc substr $piece->type, 1, 1 : substr $piece->type, 0, 1
            if ($piece);
            
            $piece_notation =
                $piece->color eq 'white' ? $piece_notation : lc $piece_notation if ($piece);
            
            $piece ? print $piece_notation : print ".";
            print $file eq 'h' ? "\n" : "  ";
        }
    }
    print "\t" x2 . "  ";
    print $_ . "  " for ('a'..'h');
    print "\n" x 2;
}

1;