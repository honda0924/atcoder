child = gets.chomp.to_i
array = gets.split.map(&:to_i)
cnt = 0
while child != 1 do
  cnt += 1
  child = array[child - 2]
end
puts cnt