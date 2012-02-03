#!/usr/bin/perl -w
=head1 NAME

Chess::Square - A class, representing a single square on the Chess::Board.

=head1 SYNOPSIS

use Chess::Square;
$square = Chess::Square->new();

$square->file('E');
$square->rank(2);
$square->color('light');

print "The " . $square->file . $square->rank . " square is " . $square->color;

=head1 DESCRIPTION

Each Chess::Square has coordinates, represented by
* File(column) of the square, represented by a letter from 'A' to 'H'.
* Rank(row) of the square, represented by a digit from 1 to 8.
* Color of the square: either light or dark.

=head1 METHODS

=head2 Construction

=item new()

Creates a new instance of the Chess::Square class.
Takes no arguments.
The object's properties are accessed via Object methods.

my $square = Chess::Square->new();

=head2 Class methods

There are no class methods for this class.

=head2 Object methods

=item rank()

A getter/setter of the RANK property of the square.
Called without arguments this method returns the value of $self->{RANK} or undef.
If a single parameter is passed, $self->{RANK} is set to that letter,
which is always converted to lowercase.

$square->rank('E');
print $square->rank;

=item file()

A getter/setter of the FILE property of the square.
Called without arguments this method returns the value of $self->{FILE} or undef.
If a single parameter is passed, $self->{FILE} is set to that number.

$square->file(2);
print $square->file;

=item color()

A getter/setter of the COLOR property of the square.
Called without arguments this method returns the value of $self->{COLOR} or undef;
If a single arguments is passed, $self->{COLOR} is set to that string(either 'light' or 'dark').

$square->color(dARk);
print $square->color;

=head1 AUTHOR

Tomislav Dyulgerov

=head1 COPYRIGHT

Copyright (c) 2012 Tomislav Dyulgerov. All rights reserved.
This module is Free Software. It may be modified and redistributed under the same terms as Perl itself.

=cut
package Chess::Square;
use strict;

sub new {
    my $class = shift;
    my $self  = {};
    
    $self->{FILE}  = undef;
    $self->{RANK}  = undef;
    $self->{COLOR} = undef;
    
    bless $self, $class;
    return $self;
}

sub file {
    my $self = shift;
    if (@_) {
        my $file = shift;
        if ($file =~ /[a-h]/i) {
            $self->{FILE} = lc $file; # Converts the character to lowercase.
        }
        else {
            die "A square's rank can only be a letter from 'A' to 'H'.";
        }
    }
    
    return $self->{FILE};
}

sub rank {
    my $self = shift;
    if (@_) {
        my $rank = shift;
        if ($rank <= 8 and $rank >= 1) {
            $self->{RANK} = $rank;
        }
        else {
            die "A square's rank must be between 1 and 8.";
        }
    }
    
    return $self->{RANK};
}

sub color {
    my $self = shift;
    if (@_) {
        my $color = shift;
        if ($color =~ /(?:light|dark)/i) {
            $self->{COLOR} = lc $color; # Converts the string to lowercase.
        }
        else {
            die "A square's color can be either 'light' or 'dark'.";
        }
    }
    
    return $self->{COLOR};
}

# Expects a string as a parameter. Example: e4;
# Returns a new square
sub create_square {
    my $self = shift;
    
    if (@_){
        my $square = shift;
        my $file   = substr $square, 0, 1;
        my $rank   = substr $square, 1, 2;
        
        $self->file($file);
        $self->rank($rank);
    }
    else {
        die "Insufficient paramters. Square expected.";
    }
}

1;