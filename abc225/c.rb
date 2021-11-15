n,m = gets.split.map(&:to_i)
head = 0
sunday = 0
(0..n-1).each do |k|

  week = gets.split.map(&:to_i)
  head = week[0] % 7
  if k==0
    sunday=week[0]
  else
    if sunday != week[0] - 7
      puts 'No'
      exit
    end
    sunday = week[0]
  end
  (0..m-1).each do |i|
    if week[i] % 7 != head + i
      puts 'No'
      exit
    end
  end
end
puts 'Yes'
