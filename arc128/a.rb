n=gets.chomp.to_i
array = gets.split.map(&:to_i)
is_gold = true
is_pend = false
answers = Array.new(n,0)
(0..n-2).each do |i|
  if is_gold
    if array[i] > array[i+1]
      answers[i]=1
      is_gold = false
      is_pend = false
    elsif array[i] == array[i+1]
      is_pend = true
    else
      if is_pend
        answers[i-1]=1
        answers[i]=1
        is_gold = false
        is_pend = false
      end
    end
  else
    if array[i] < array[i+1]
      answers[i]=1
      is_gold = true
      is_pend = false
    elsif array[i] == array[i+1]
      is_pend = true
    else
      if is_pend
        answers[i-1]=1
        answers[i]=1
        is_gold = true
        is_pend = false
      end
    end
  
  end
end
if !is_gold
  if array[n-2]>array[n-1]
    answers[n-1]=1
  else
    answers[n-2]=1
  end
else
  if array[n-2]<array[n-1]
    answers[n-1]=1
  else
    answers[n-2]=1
  end  
end
puts answers.join(' ')