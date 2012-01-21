#!/usr/bin/env ruby

# You are given several strings that may/may not be valid emails. You should write a regular expression that determines if the email id is a valid email id or not. You may assume all characters are from the english language.

File.readlines(ARGV[0]).each{ |string| puts ( string =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i ? true : false ) }