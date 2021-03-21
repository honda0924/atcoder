n=gets.chomp.to_i
c_array = []
a_array=Array.new(n)
b_array=Array.new(n)
n.times do
  c=gets.split.map(&:to_i)
  c_array << c
end
(0..n-1).each do |i|
  a_array[i] = c_array[0][i]-c_array[0].min
end
(0..n-1).each do |j|
    b_array[j] = c_array[j][0]-a_array[0][0]
end

(0..n-1).each do |i|
  (0..n-1).each do |j|

    if c_array[i][j] != a_array[j] + b_array[i]
      puts 'No'
      exit
    end
  end
end
puts 'Yes'
puts a_array.join(' ')
puts b_array.join(' ')



