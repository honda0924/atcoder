n = gets.chomp.to_i
if n < 1000
  puts 0
elsif n < 1000000
  puts n - 999
elsif n < 1000000000
  puts (n - 999999) * 2 + 999000
elsif n < 1000000000000
  puts (n - 999999999) * 3 + 999000000 * 2 + 999000
elsif n < 1000000000000000
  puts (n - 999999999999) * 4 + 999000000000 * 3 + 999000000 * 2 + 999000
else 
  puts (n - 999999999999999) * 5 + 999000000000000 * 4 + 999000000000 * 3 + 999000000 * 2 + 999000
end