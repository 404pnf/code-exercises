#!/usr/bin/env ruby
File.readlines(ARGV[0]).each{ |string| puts ( string =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i ? true : false ) }