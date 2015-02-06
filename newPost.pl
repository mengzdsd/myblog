#!/usr/bin/perl
#===============================================================================
#
#         FILE: newPost
#
#        USAGE: newPost [filename]
#
#      EXAMPLE: newPost tran-xxxx-xxx-xxx   
#
#  DESCRIPTION: Used to create the new post file with head.
#
#      OPTIONS: filename - post file name
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Mengz You (mengz), mengz.you@gmail.com
# ORGANIZATION:
#      VERSION: 1.0
#      CREATED: 02/06/2015 10:36 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Cwd;
use POSIX qw(strftime);

my $scriptName = $0;
my $numberOfOptions = scalar @ARGV;
my $curDir = getcwd;

if (($numberOfOptions != 1) || ($ARGV[0] eq '-h')) {
  &doHelp;
}

my $postName = $ARGV[0];

my $postTime = strftime "%F %R %z", localtime;
my $postDate = strftime "%F", localtime;

my $postHead = <<END;
---
layout: post
title: \"\"
date: $postTime
comments: true
categories: []
tags: []
description: \"\"
---

END

my $postFileName = $curDir . "/_posts/" . $postDate . "-" . $postName . ".md"; 

my $success = open POSTFILE, ">", $postFileName;
unless ($success) {
  die "Error: Can not create $postFileName file - $!\n";
}

print POSTFILE $postHead;

close POSTFILE;

exit 0;

sub doHelp {
  print "Usage: $scriptName [filename]\n";
  print "\t$scriptName -h\n";
  print "Example: $scriptName tran-xxxx-xxx-xxx\n";
  exit -1;
}
