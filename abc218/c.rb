n = gets.chomp.to_i
s_square = []
t_square = []
t1_square = []
t2_square = []
t3_square = []
t4_square = []

n.times do
  str = gets.chomp
  s_square << str
end
n.times do
  str = gets.chomp.split('')
  t_square << str
end
t1_square = t_square.reverse.map(&:reverse)
t2_square = t_square.transpose.reverse
t3_square = t_square.transpose.map(&:reverse)
t4_square = t_square
tmp_square=t1_square
n.times do
  if tmp_square == s_square
    puts 'Yes'
    exit
  end
  tmp_square = []
  (-1..n-2).each do |j|
    tmp_square << t1_square[j]
  end
end
tmp_square=t2_square
n.times do
  if tmp_square == s_square
    puts 'Yes'
    exit
  end
  tmp_square = []
  (-1..n-2).each do |j|
    tmp_square << t2_square[j]
  end
end
tmp_square=t3_square
n.times do
  if tmp_square == s_square
    puts 'Yes'
    exit
  end
  tmp_square = []
  (-1..n-2).each do |j|
    tmp_square << t3_square[j]
  end
end
tmp_square=t4_square
n.times do
  if tmp_square == s_square
    puts 'Yes'
    exit
  end
  tmp_square = []
  (-1..n-2).each do |j|
    tmp_square << t4_square[j]
  end
end
s1_square = t_square.transpose.reverse
tmp_square=t1_square
n.times do
  if tmp_square == s1_square
    puts 'Yes'
    exit
  end
  tmp_square = []
  (-1..n-2).each do |j|
    tmp_square << t1_square[j]
  end
end
tmp_square=t2_square
n.times do
  if tmp_square == s1_square
    puts 'Yes'
    exit
  end
  tmp_square = []
  (-1..n-2).each do |j|
    tmp_square << t2_square[j]
  end
end
tmp_square=t3_square
n.times do
  if tmp_square == s1_square
    puts 'Yes'
    exit
  end
  tmp_square = []
  (-1..n-2).each do |j|
    tmp_square << t3_square[j]
  end
end
tmp_square=t4_square
n.times do
  if tmp_square == s1_square
    puts 'Yes'
    exit
  end
  tmp_square = []
  (-1..n-2).each do |j|
    tmp_square << t4_square[j]
  end
end


puts 'No'