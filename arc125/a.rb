n,m = gets.split.map(&:to_i)
a_array = gets.split.map(&:to_i)
b_array = gets.split.map(&:to_i)
move_number = 1
ans = 0
if a_array.uniq.length == 1
  if b_array.uniq.length == 1 && a_array[0] == b_array[0]
    puts b_array.length
  else
    puts -1
  end
  exit
else
  (1..n-1).each do |i|
    if a_array[i] != a_array[0] || a_array[i*(-1)] != a_array[0]
      move_number = i
      break
    end 
  end
  (0..m-1).each do |i|
    if i == 0
      if b_array[0] == a_array[0]
        ans += 1
      else
        ans += move_number + 1
        move_number = 1
      end
    else
      if b_array[i] == b_array[i-1]
        ans += 1
      else
        ans += move_number + 1
        move_number = 1
      end
    end
  end
end
puts ans