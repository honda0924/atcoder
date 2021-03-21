n, m=gets.split.map(&:to_i)
scores = []
n.times do
  score = (gets.count('1')) % 2
  scores << score
end
puts scores.count(0) * scores.count(1)