s=gets.chomp.split('')
s.each do |str|
  if s.count(str) == 1
    puts str
    exit
  end
end
puts -1
