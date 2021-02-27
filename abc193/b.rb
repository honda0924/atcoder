n = gets.chomp.to_i
shops = []
n.times do
  shop = gets.split.map(&:to_i)
  shops << shop
end
shops.sort!{|a, b| a[1] <=> b[1]}
shops.each do |s|
  if s[2] > s[0]
    puts s[1]
    exit
  end
end
puts -1