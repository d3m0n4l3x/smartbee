#!/usr/bin/perl -w
#Report Generator v1 for SmartBee v1
require "/usr/local/sbin/smartbee/send_report_through_gmail_v1.pl";
$|=1;

$report_recipient='alex.chaoyi.huang@gmail.com';

$current_date=localtime();
#print "$current_date\n";

if (-e '/usr/local/sbin/smartbee/reports'){
	;
}else{
	system("mkdir -p /usr/local/sbin/smartbee/reports");
}

system("/usr/local/sbin/smartbee/counter1_v1.pl /usr/local/sbin/fatbee/correlation/all.log > \'/usr/local/sbin/smartbee/reports/$current_date.log\'");
print "The report is placed at \'/usr/local/sbin/smartbee/reports/$current_date.log\'.\n";

@email_content=`cat \'/usr/local/sbin/smartbee/reports/$current_date.log\'`;
$email_content_string=join("\n", @email_content);

&send_by_gmail($report_recipient, "SmartBee Report - $current_date !", $email_content_string);
print "The report is also sent to $report_recipient!\n";

exit(1);
