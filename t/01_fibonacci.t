#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

BEGIN {
    use_ok('Fibonacci');
};

my $expected = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987 ];

subtest 'get fibonacci number' => sub {

    my $count = scalar @{ $expected } - 1;
    for my $length ( 0 .. $count ) {
        my $got = Fibonacci->get_number_at($length);
        is($got, $expected->[$length]);
    }
};

done_testing;

