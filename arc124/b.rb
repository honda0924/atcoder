n=gets.chomp.to_i
a_array = gets.split.map(&:to_i)
b_array = gets.split.map(&:to_i)
c_array = []
ans_array = []
def xor(i,j)
  bin_i = i.to_s(2).split('').map(&:to_i).reverse
  bin_j = j.to_s(2).split('').map(&:to_i).reverse
  len = [bin_i.length, bin_j.length].max
  ans = 0
  (0..len - 1).each do |k|
    tmp_i = k > bin_i.length - 1 ? 0 : bin_i[k].to_i
    tmp_j = k > bin_j.length - 1 ? 0 : bin_j[k].to_i
    ans += ((tmp_i + tmp_j) % 2) * (2 ** k)
  end
  return ans
end

b_array.each do |i|
  c_array << xor(a_array[0], i)
end
c_array.each do |c|
  flg=0
  a_array.each do |a|
    tmp_b = xor(a,c)
    if !b_array.include?(tmp_b)
      flg=1
      break
    end
  end
  if flg == 0
    ans_array << c
  end
end
puts ans_array.length
ans_array.each do |answer|
  puts answer
end
