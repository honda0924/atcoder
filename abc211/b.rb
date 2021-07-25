array = []
ans = ['2B','3B','H','HR']
4.times do
  s = gets.chomp
  array << s
end
array.sort!
(0..3).each do |i|
  if array[i] != ans[i]
    puts 'No'
    exit
  end
end
puts 'Yes'