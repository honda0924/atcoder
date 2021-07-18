array = gets.split.map(&:to_i)
ans = 0
if (array[0]+array[2])%2==1
  array[0] += 1
  ans = 1
end
if array[0]+array[2]>2*array[1]
  puts ans + (array[0]+array[2]-2*array[1])/2
else
  puts ans+2*array[1]-array[0]-array[2]
end
