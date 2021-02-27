n = gets.chomp.to_i
is_expressed = []
max_a = Math.sqrt(n).to_i
max_b = Math.log(n, 2).to_i

(2..max_a).each do |i|
  (2..max_b).each do |j|
    if i**j<=n
      is_expressed << i**j
    end
  end
end
puts n - is_expressed.uniq.length