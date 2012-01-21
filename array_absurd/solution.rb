#!/usr/bin/env ruby

# Imagine we have an immutable array of size N which we know to be filled with integers ranging from 0 to N-2, inclusive. Suppose we know that the array contains exactly one duplicated entry and that duplicate appears exactly twice. Find the duplicated entry. (For bonus points, ensure your solution has constant space and time proportional to N)

File.readlines(ARGV[0]).each do |line| 
  a = line.split(";").last.split(",").map{ |i| i.to_i }
  dups = []; a.each{ |i | dups << i if a.count(i) > 1 }
  puts dups.uniq.first
end