#!/usr/bin/perl -w
=head1 NAME

Chess::Piece - The base class of all chess pieces.

=head1 DESCRIPTION

A class, defining the common interface for all chess pieces.
Every chess piece inherits from this class.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Piece class.

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item

=item valid_moves()

This is an abstract method that must be overriden by any class that inherits from
Chess::Piece. Returns a list of Chess::Squares that the certain piece can reach.

=head1 AUTHOR

Tomislav Dyulgerov

=cut
package Chess::Piece;
use strict;

# Constructor method stub.
sub new {
    my $class = shift;
    my $self  = {};
        
    bless $self, $class;
    return $self;
}

sub valid_moves {
    print "Call to the abstract method Chess::Piece::valid_moves().\n";
}

1;