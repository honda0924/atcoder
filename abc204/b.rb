n=gets.chomp.to_i
nuts = gets.split.map(&:to_i)
puts nuts.map{ |i| i>10 ? i-10 : 0 }.sum