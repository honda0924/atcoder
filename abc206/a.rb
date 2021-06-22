n=gets.chomp.to_i
price=(1.08*n).to_i
if price < 206
  puts 'Yay!'
elsif price == 206
  puts 'so-so'
else
  puts ':('
end