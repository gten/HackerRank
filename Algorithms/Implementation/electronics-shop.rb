#!/bin/ruby

s,n,m = gets.strip.split(' ')
s = s.to_i
n = n.to_i
m = m.to_i
keyboards = gets.strip
keyboards = keyboards.split(' ').map(&:to_i)
pendrives = gets.strip
pendrives = pendrives.split(' ').map(&:to_i)

max = -1
keyboards.each do |k|
    pendrives.each do |p|
        if (k + p) > max && (k + p) <=s
            max = k + p
        end
    end
end

puts max

