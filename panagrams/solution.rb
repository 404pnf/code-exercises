#!/usr/bin/ruby

# The sentence 'A quick brown fox jumps over the lazy dog' contains every single letter in the alphabet. Such sentences are called pangrams. You are to write a program, which takes a sentence, and returns all the letters it is missing (which prevent it from being a pangram). You should ignore the case of the letters in sentence, and your return should be all lower case letters, in alphabetical order. You should also ignore all non US-ASCII characters.In case the input sentence is already a pangram, print out the string NULL

alphabet = ("a".."z").to_a
File.readlines(ARGV[0]).each do |line| 
  letters = line.gsub(" ", "").split("").uniq
  missing = (alphabet - letters).join
  if missing.empty?
    puts "NULL"
  else
    puts missing
  end
end
