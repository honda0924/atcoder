n=gets.chomp
reverse_n=n.split('').reverse.join
if n=='1000000000'
  puts 'Yes'
  exit
end
(0..9-n.length).each do |i|
  if n.to_i == reverse_n.to_i*(10**i)
    puts 'Yes'
    exit
  end
end
puts 'No'

