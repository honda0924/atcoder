n=gets.chomp.to_i
sequences = []
n.times do
  sequence = gets.split.map(&:to_i)
  sequences << sequence
end
puts sequences.length > 1 ? sequences.uniq.length : 1
