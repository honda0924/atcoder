v,t,s,d=gets.split.map(&:to_i)

puts d < v * t || d > v * s ? 'Yes' : 'No'
