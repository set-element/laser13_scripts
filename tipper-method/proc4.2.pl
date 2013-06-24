#!/usr/bin/perl
# IP count start-time dt
# 103.1.68.41 992 1350396816 20037619
# 
# Filter addresses that have a connection count
#   less than 50.
#
while( defined( $line = <>)) {
        @fields = split( / /, $line);

        $n = $fields[1];
        
	if ( $n < 50 ) {
		print $line
		}
	
}
