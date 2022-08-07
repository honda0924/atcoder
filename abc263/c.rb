n, m = gets.split.map(&:to_i)
array = [*(1..m)]
array.combination(n).to_a.each do |e|
  puts e.join(' ')
end

