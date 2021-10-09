n,p = gets.split.map(&:to_i)
scores = gets.split.map(&:to_i)
puts scores.select{|i| i < p}.length