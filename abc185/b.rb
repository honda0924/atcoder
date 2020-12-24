n,m,t=gets.split.map(&:to_i)
max_n=n
tmp_time=0
(1..m).each do |i|
  a,b=gets.split.map(&:to_i)
  n=n-a+tmp_time
  if n<=0
    puts 'No'
    exit
  end
  n=n+b-a
  if n>max_n
    n=max_n
  end
  if i==m
    n=n-t+b
  end
  if n<=0
    puts 'No'
    exit
  end
  tmp_time=b
end

puts 'Yes'