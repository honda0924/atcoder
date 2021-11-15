n=gets.chomp.to_i
array=[]
(n-1).times do
  array << gets.split.map(&:to_i)
end
puts array.flatten.count(array[0][0]) == n-1 || array.flatten.count(array[0][1]) == n-1 ? 'Yes' : 'No'

