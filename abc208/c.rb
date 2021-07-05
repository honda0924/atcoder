n,k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
tmp_array = array.sort
q = k / n
r = k % n
check_num = r == 0 ? 0 : tmp_array[r -1]
array.each do |i|
  puts i <= check_num ? q + 1 : q
end
