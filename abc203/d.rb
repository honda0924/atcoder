n, k = gets.split.map(&:to_i)
parks = []
n.times do
  park = gets.split.map(&:to_i)
  parks << park
end
(0..n-k).each 