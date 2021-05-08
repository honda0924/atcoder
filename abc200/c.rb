n=gets.chomp.to_i
puts gets.split.map(&:to_i).map{|i| i % 200}.group_by(&:itself).map{|k,v| v.length * (v.length - 1) / 2}.inject(:+)

