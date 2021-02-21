chars=gets.chomp.split("")
unreadable_flg = 0
chars.each_with_index do |c,index|
  if index % 2 == 0
    if (c=~/^[a-z]+$/)==0
      next
    else
      unreadable_flg = 1
      break
    end
  else
    if (c=~/^[A-Z]+$/)==0
      next
    else
      unreadable_flg = 1
      break
    end
  end
end
puts unreadable_flg == 0 ? 'Yes' : 'No'