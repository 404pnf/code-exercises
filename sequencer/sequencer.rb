#!/usr/bin/ruby

# USING 1.8.7

def sequence(n)
  line = "1"
  puts line
  puts "============="
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
    puts "============="
  end
end

sequence(100)

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
