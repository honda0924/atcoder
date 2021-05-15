s = gets.chomp
required_num = s.count('o')
may_num = s.count('?')
if required_num == 4
  puts 24
elsif required_num == 3
  puts 36 + 24 * may_num
elsif required_num == 2
  puts 14 + 36 * may_num + 12 * may_num * (may_num - 1)
elsif required_num == 1
  puts 1 + 14 * may_num + 18 * may_num * (may_num - 1) + 4 * may_num * (may_num - 1) * (may_num - 2)
elsif required_num == 0
  puts may_num + 7 * may_num * (may_num - 1) + 6 * may_num * (may_num - 1) * (may_num - 2) + may_num * (may_num - 1) * (may_num - 2) * (may_num - 3)
else
  puts 0
end
