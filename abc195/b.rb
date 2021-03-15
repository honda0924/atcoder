a,b,w = gets.split.map(&:to_i)

max_orange = (1000 * w / a.to_f).to_i
min_orange = (1000 * w / b.to_f).to_i + 1
if 1000 * w / b.to_f == (1000 * w / b.to_f).to_i
  min_orange -= 1
end

if max_orange < min_orange
  puts 'UNSATISFIABLE'
else
  puts min_orange.to_s + " " + max_orange.to_s
end