n=gets.chomp.to_i

if n<100
  puts n/11
elsif n<1010
  puts 9
elsif n<10000
  puts n/101
elsif n<100100
  puts 99
elsif n<1000000
  puts n/1001
elsif n<10001000
  puts 999
elsif n<100000000
  puts n/10001
elsif n<1000010000
  puts 9999
elsif n<10000000000
  puts n/100001
elsif n<100000100000
  puts 99999
else
  puts n/1000001
end