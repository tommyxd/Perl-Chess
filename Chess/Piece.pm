#!/usr/bin/perl -w

# The base class of for all chess pieces.
package Chess::Piece;

# Constructor
sub new {
	my $class = shift;
	my $self  = {};
	# TODO: Not implemented yet
	bless $self, $class;
	return $self;
}
