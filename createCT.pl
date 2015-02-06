#!/usr/bin/perl
#===============================================================================
#
#         FILE: createCT
#
#        USAGE: createCT -t [C|T] -e [ename] -c [cname]
#
#  DESCRIPTION: Used to create the catagory page or tag page.
#
#      OPTIONS:
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Mengz You (mengz), mengz.you@gmail.com
# ORGANIZATION:
#      VERSION: 1.0
#      CREATED: 01/11/2015 10:05:59 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Getopt::Std;
use Cwd;

my $scriptName = $0;
my %options = ();
my $numberOfOptions = scalar @ARGV;
my $curDir = getcwd;

if ($numberOfOptions != 6) {
  &doHelp;
}

getopts("t:e:c:", \%options);
if (!(defined $options{t}) || !(defined $options{e}) || !(defined $options{c})) {
  &doHelp;
}

if ($options{t} eq 'C') {
  &doActionCategory($options{e}, $options{c});
} elsif ($options{t} eq 'T') {
  &doActionTag($options{e}, $options{c});
} else {
  &doHelp;
}

exit 0;

sub doHelp {
  print "Usage: $scriptName -t [type] -e [ename] -c [cname]\n";
  print "\t$scriptName -h\n";
  print "\t-t - Specify the type, the type are:\n";
  print "\t\tC - For category.\n";
  print "\t\tT - For tag.\n";
  print "\t-e - Specify the ename for catgeory or tag.\n";
  print "\t-c - Specify the cname for catgory or tag.\n";
  print "\t-h - Print this help.\n";
  print "Example: $scriptName -t T -e blog -c 博客\n";
  exit -1;
}

sub doActionTag {
  my ($ename, $cname) = @_;
  my $tagTemplateFile = $curDir . "/_template/tag.html";
  my $tagsDataFile = $curDir . "/_data/tags.yml";
  my $tagDir = $curDir . "/blog/tags/$ename";
  my $tagIndexFile = $tagDir . "/index.html";

  die "Error: The tag template file is not exist!\n" unless -e $tagTemplateFile;
  die "Error: The tag data file is not exist!\n" unless -e $tagsDataFile;
  mkdir $tagDir, 0755 or die "Error: Can not creat the $tagDir directory - $!\n";

  my $success = open DATAFILE, ">>", $tagsDataFile;
  unless ($success) {
    die "Error: Can not open $tagsDataFile file - $!\n";
  }

  print DATAFILE "- ename: \"$ename\"\n";
  print DATAFILE "  cname: \"$cname\"\n";
  print DATAFILE "\n";
  close DATAFILE;

  $success = open TEMPLATEFILE, "<", $tagTemplateFile;
  unless ($success) {
    die "Error: Can not open $tagTemplateFile file - $!\n";
  }

  $success = open INDEXFILE, ">", $tagIndexFile;
  unless ($success) {
    die "Error: Can not open $tagIndexFile file to write - $!\n";
  }

  while (<TEMPLATEFILE>) {
    chomp;
    s/\[tag\.cname\]/$cname/;
    s/\[tag\.ename\]/$ename/;
    print INDEXFILE "$_\n";
  }
  close TEMPLATEFILE;
  close INDEXFILE;
}

sub doActionCategory {
  my ($ename, $cname) = @_;
  my $categoryTemplateFile = $curDir . "/_template/category.html";
  my $categoriesDataFile = $curDir . "/_data/categories.yml";
  my $categoryDir = $curDir . "/blog/categories/$ename";
  my $categoryIndexFile = $categoryDir . "/index.html";
  die "Error: The category template file is not exist!\n" unless -e $categoryTemplateFile;
  die "Error: The categories data file is not exist!\n" unless -e $categoriesDataFile;
  mkdir $categoryDir, 0755 or die "Error: Can not creat the $categoryDir directory - $!\n";

  my $success = open DATAFILE, ">>", $categoriesDataFile;
  unless ($success) {
    die "Error: Can not open $categoriesDataFile file - $!\n";
  }

  print DATAFILE "- ename: \"$ename\"\n";
  print DATAFILE "  cname: \"$cname\"\n";
  print DATAFILE "\n";
  close DATAFILE;

  $success = open TEMPLATEFILE, "<", $categoryTemplateFile;
  unless ($success) {
    die "Error: Can not open $categoryTemplateFile file - $!\n";
  }

  $success = open INDEXFILE, ">", $categoryIndexFile;
  unless ($success) {
    die "Error: Can not open $categoryIndexFile file to write - $!\n";
  }

  while (<TEMPLATEFILE>) {
    chomp;
    s/\[category\.cname\]/$cname/;
    s/\[category\.ename\]/$ename/;
    print INDEXFILE "$_\n";
  }
  close TEMPLATEFILE;
  close INDEXFILE;
}
