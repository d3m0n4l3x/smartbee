#!/usr/bin/perl -w
#Send_Report_through_Gmail
#v1 updated on Dec 10, 2017.
$|=1;

sub send_by_gmail($$$){
	$email_recipient=shift;
	$email_subject=shift;
	$email_content=shift;
	#print "Sending email...\n";						#Debug
	#system("echo \"Subject: Alert\n\n$email_content\" | ssmtp -vvv $admin_mailbox");		#Debug
	#system("echo \"Subject: Alert\n\n$email_content\" | ssmtp $admin_mailbox");			#Debug
	system("echo \"Subject: $email_subject\n\n$email_content\" | ssmtp $email_recipient");
	return;
}


1;
