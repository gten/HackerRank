#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

max = 0
(0..a.size - 1).each do |i|
    result_minus = []
    result_plus = []
    
    (0..a.size - 1).each do |j|
        if i == j
            next
        end
        
        if (a[i]-a[j]) <= 1 && (a[i] - a[j] >= 0)
            result_plus << a[j]
        end
        if (a[i]-a[j]) >= -1 && (a[i] - a[j] <= 0)
            result_minus << a[j]
        end
    end
    
    if max < result_plus.size() + 1
        max = result_plus.size() + 1
    end
    if max < result_minus.size() + 1
        max = result_minus.size() + 1
    end
end

puts max
