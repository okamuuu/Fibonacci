package Fibonacci;
use strict;
use warnings;
our $VERSION = '0.01';
use Carp ();

sub get_number_at {
    my ($class, $length) = @_;

    if ( $length == 0 ) {
        Carp::croak("can't calc 0..."); 
    }


    if ( $length == 1 or $length == 2 )  {
        return 1;
    } 

    my @numbers;

    for my $len ( 1 .. $length ) {
        if ( $len == 1 ) {
            $numbers[$len] = 1;
        }
        elsif ( $len == 2 ) {
            $numbers[$len] = 1;
        }
        else {
            $numbers[$len] = $numbers[$len-1] + $numbers[$len-2]; 
        } 
    }

    return $numbers[$length-1] + $numbers[$length-2];
}

1;
__END__

=head1 NAME

Fibonacci -

=head1 SYNOPSIS

  use Fibonacci;

=head1 DESCRIPTION

Fibonacci is

=head1 AUTHOR

okamura E<lt>default {at} example.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
