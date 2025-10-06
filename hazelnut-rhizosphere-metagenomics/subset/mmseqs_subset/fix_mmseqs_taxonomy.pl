#!usr/bin/perl
use 5.010;

while(<>) {
	chomp;
	@line = split("\t", $_);
	foreach $i (@line) {
		if( substr($i, 0, 2) eq 'd_' ) {
			print("$i");
		}
		elsif( substr($i, 0, 2) eq 'p_' ) {
			print("\t$i");
		}
		elsif( substr($i, 0, 2) eq 'c_' ) {
			print("\t$i");
		}
		elsif( substr($i, 0, 2) eq 'o_' ) {
			print("\t$i");
		}
		elsif( substr($i, 0, 2) eq 'f_' ) {
			print("\t$i");
		}
		elsif( substr($i, 0, 2) eq 'g_' ) {
			print("\t$i");
		}
		elsif( substr($i, 0, 2) eq 's_' ) {
			print("\t$i");
		}
	}
	print("\n");
}
