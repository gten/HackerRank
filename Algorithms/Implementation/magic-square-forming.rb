#!/bin/ruby

s = []
for s_i in (0..3-1)
    s_t = gets.strip
    s << s_t.split(' ').map(&:to_i)
end
s = s.flatten
#  Print the minimum cost of converting 's' into a magic square
magic = []
magic[0] = [4, 9, 2, 3, 5, 7, 8, 1, 6]
magic[1] = [8, 3, 4, 1, 5, 9, 6, 7, 2]
magic[2] = [6, 1, 8, 7, 5, 3, 2, 9 ,4]
magic[3] = [2, 7, 6, 9, 5, 1, 4, 3, 8]
magic[4] = [2, 9, 4, 7, 5, 3, 6, 1, 8]
magic[5] = [6, 7, 2, 1, 5, 9, 8, 3, 4]
magic[6] = [8, 1, 6, 3, 5, 7, 4, 9, 2]
magic[7] = [4, 3, 8, 9, 5, 1, 2, 7, 6]

def cost(s, magic) 
    c = 0
    (0..magic.size-1).each do |i|
        c+= (s[i] - magic[i]).abs
    end
    c
end

min = 10000
(0..7).each do |i|
    c = cost(s, magic[i])
    if c < min
        min = c
    end
end

puts min
