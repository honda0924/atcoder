s=gets.split('').map(&:to_i)
if s.length==1
  if s[0]==8
    puts 'Yes'
  else
    puts 'No'
  end
elsif s.length==2
  if (s[0]*10+s[1])%8==0 || (s[1]*10+s[0])%8==0
    puts 'Yes'
  else
    puts 'No'
  end
else
  num = 112
  flg=0
  while num<1000
    num_array=num.to_s.split('').map(&:to_i).sort
    s.combination(3).to_a.each do |a|
      if num_array == a.sort
        flg=1
        break
      end
    end
    if flg==1
      break
    end
    num +=8
  end
end
  if flg==1
    puts 'Yes'
  elsif flg == 0
    puts 'No'
  end