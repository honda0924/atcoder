n=gets.chomp.to_i
array = gets.split.map(&:to_i)
tmp = []
ans = 0
(0..n-1).each do |i|
  if array[i] != array[n-1-i]
    uniq_flg=0
    if !tmp.include?(array[i])
      tmp << array[i]
      uniq_flg=1
    end
    if !tmp.include?(array[n-1-i])
      tmp << array[n-1-i]
      uniq_flg=1
    end
    if uniq_flg == 1
      ans += 1
      uniq_flg = 0
    end
  end
end

puts ans