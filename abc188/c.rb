n=gets.chomp.to_i
scores=gets.split.map(&:to_i)
semi_a=scores.slice!(0,2**(n-1))
semi_b=scores
if semi_a.max>semi_b.max
  puts semi_b.index(semi_b.max) + 2**(n-1) +1
else
  puts semi_a.index(semi_a.max) +1
end
