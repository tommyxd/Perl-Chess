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

# Constructor method stub.
sub new {
	my $class = shift;
	my $self  = {};
	# TODO: Not implemented yet.
	bless $self, $class;
	return $self;
}

1;