t=gets.chomp.to_i
t.times do
  c=gets.chomp.to_i
  if c%4==0
    puts 'Even'
  elsif c%2==0
    puts 'Same'
  else
    puts 'Odd'
  end
end