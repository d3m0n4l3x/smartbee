#!/usr/bin/perl -w
#Report Generator v1 for SmartBee v1
$|=1;

$current_date=localtime();
#print "$current_date\n";

if (-e '/usr/local/sbin/smartbee/reports'){
	;
}else{
	system("mkdir -p /usr/local/sbin/smartbee/reports");
}

system("/usr/local/sbin/smartbee/counter1_v1.pl /usr/local/sbin/fatbee/correlation/all.log > \'/usr/local/sbin/smartbee/reports/$current_date.log\'");
print "The report is placed at \'/usr/local/sbin/smartbee/reports/$current_date.log\'.\n";

exit(1);
