x=gets.chomp.split("").map(&:to_i)
m=gets.chomp.to_i
x_base = x.max + 1
ans_cnt = 0
stop_flg = 0
while true do
  dig_m=m
  puts dig_m/x_base**(x.length-1)
  puts ans_cnt
  (1..x.length).each do |i|
    if dig_m/(x_base**(x.length-i))>x[i-1]
      ans_cnt += 1
      break     
    elsif dig_m/(x_base**(x.length-i))<x[i-1]
      stop_flg = 1
      break
    else
      if i == x.length
        ans_cnt += 1
        break  
      else
        dig_m = dig_m % (x_base**(x.length))
      end
    end
  end
  if stop_flg == 1
    break
  else
    x_base += 1
  end

end


# while true do
#   x_to_decimal = 0
#   x.each_with_index do |i,index|
#     x_to_decimal += i * (x_base ** (x.length - index - 1))
#   end

#   if x_to_decimal <= m
#     ans_cnt +=1
#     x_base += 1
#   else
#     break
#   end
# end

puts ans_cnt