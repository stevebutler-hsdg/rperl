#!/usr/bin/perl

# Learning RPerl, Chapter 2, Exercise 4
# Find the product of any two numbers entered by the user

# [[[ HEADER ]]]
use strict;
use warnings;
use RPerl;
our $VERSION = 0.001_000;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls) # USER DEFAULT 1: allow numeric values & print operator
## no critic qw(ProhibitExplicitStdin)  # USER DEFAULT 4: allow <STDIN> prompt

# [[[ OPERATIONS ]]]
print 'Please input multiplicator: ';
my string $multiplicator_string = <STDIN>;
my number $multiplicator = string_to_number($multiplicator_string);

print 'Please input multiplicand: ';
my string $multiplicand_string = <STDIN>;
my number $multiplicand = string_to_number($multiplicand_string);

my number $product = $multiplicator * $multiplicand;

print "\n";
print 'Product = Multiplicator * Multiplicand = ' . $multiplicator . ' * ' . $multiplicand . ' = ' . $product . "\n";
