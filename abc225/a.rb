s=gets.chomp.split('')
if s.uniq.length == 3
  puts 6
elsif s.uniq.length == 2
  puts 3
else
  puts 1
end