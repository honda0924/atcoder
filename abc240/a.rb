a,b=gets.split.map(&:to_i)
puts ((b-a)%10 == 1 || (b-a)%10 == 9) ? 'Yes' : 'No'