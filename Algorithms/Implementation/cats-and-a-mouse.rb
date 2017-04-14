#!/bin/ruby

q = gets.strip.to_i
for a0 in (0..q-1)
    x,y,z = gets.strip.split(' ')
    x = x.to_i
    y = y.to_i
    z = z.to_i
    
    if (x-z).abs == (y-z).abs
        puts "Mouse C"
    elsif (x-z).abs < (y-z).abs
        puts "Cat A"
    else
        puts "Cat B"
    end
end

