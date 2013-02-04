#!/usr/bin/env perl
use strict;
use warnings;
use POSIX qw{floor};

sub S2H{ 
  my $_ = shift;
  sprintf qq{:%02d & = & %0.02f}, $_ , floor(($_/60)*100)/100
}

my ($c1,$c2,$c3) = ([1..20],[21..40],[41..60]);
# create the sec <-> hund table found in TSD formulas
while(@$c1){
  printf qq{%s & %s & %s \\\\\n}
       , S2H( shift @$c1)
       , S2H( shift @$c2)
       , S2H( shift @$c3)
  ;
}
