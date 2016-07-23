#!/usr/bin/perl

# [[[ PREPROCESSOR ]]]
# <<< EXECUTE_SUCCESS: 'have $foo = 4' >>>
# <<< EXECUTE_SUCCESS: 'have $bar = 0' >>>
# <<< EXECUTE_SUCCESS: 'have $bat = 1' >>>
# <<< EXECUTE_SUCCESS: 'have $baz = 8' >>>
# <<< EXECUTE_SUCCESS: 'have $bax = 23' >>>

# [[[ HEADER ]]]
use RPerl;
use strict;
use warnings;
our $VERSION = 0.001_000;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator
## no critic qw(RequireInterpolationOfMetachars)  # USER DEFAULT 2: allow single-quoted control characters & sigils

# [[[ OPERATIONS ]]]
my integer_arrayref $quux = [ 5, 6, 7, 8 ];
my number $foo = scalar @{$quux};
my number $bar = scalar @{ [] };
my number $bat = scalar @{ [0] };
my number $baz = scalar @{ [ 0, 1, 2, 3, 4, 5, 6, 7 ] };
my number $bax = scalar @{ [ 0 .. 22 ] };

print 'have $foo = ', $foo, "\n";
print 'have $bar = ', $bar, "\n";
print 'have $bat = ', $bat, "\n";
print 'have $baz = ', $baz, "\n";
print 'have $bax = ', $bax, "\n";
