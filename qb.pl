#!/usr/bin/perl 
use DBI;

printf "Loading DBD driver...";
$drh = DBI->install_driver( 'QBase' );
die unless $drh;
print "Passed!\n";

printf "Connecting to database...";
$dbh = $drh->connect( 'testdb','ben','testdb' );
die unless $dbh;
print "Passed!\n";

printf "Insert Test..Passed\n";
$cursor = $dbh->prepare( "INSERT Table1 (name,age) values (\"Mouring\",16)" );
$cursor->execute;
$cursor->finish;

printf "Update test..Passed\n";
$cursor2 = $dbh->prepare( "UPDATE Table1 SET age=20 where name=\"Mouring\"" );
$cursor2->execute;
$cursor2->finish;

print "Fetch test...\n";
$cursor3 = $dbh->prepare( "SELECT * from Table1" );
$cursor3->execute;
 
while ($field = $cursor3->fetchrow) {
   print "Field: $field\n";
  }
$cursor3->finish;

$dbh->disconnect;

exit;
