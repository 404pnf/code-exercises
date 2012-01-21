#!/usr/bin/ruby

# Here's a sequence of numbers where each value in the sequence is
# generated by collecting, counting and printing the number of
# sequential digits in the previous value starting from 1:
# 
# 1
# 11
# 21
# 1211
# 111221
# 312211
# 13112221
# ...
# 
# In any programming language you want
# (Python/Ruby/JavaScript/Java/whatever,) can you write a function that,
# given some number n as an input, prints out the first n items in the
# sequence.

def sequence(n)
  line = "1"
  puts line
  n.times do
    counter = [] ; vals = []
    line.each_char do |char|
      if vals.empty? || vals.last != char
        vals << char
        counter << 1
      else
        index = vals.rindex(char)
        counter[index] += 1
      end
    end
    line = counter.zip(vals).flatten.join
    puts line
  end
end

sequence(15)

# 1
# 11
# 21
# 1211
# 111221
# 312211
# 13112221
# 1113213211
# 31131211131221
# 13211311123113112211
# 11131221133112132113212221
# 3113112221232112111312211312113211
# 1321132132111213122112311311222113111221131221
# 11131221131211131231121113112221121321132132211331222113112211
# 311311222113111231131112132112311321322112111312211312111322212311322113212221
# 132113213221133112132113311211131221121321131211132221123113112221131112311332111213211322211312113211