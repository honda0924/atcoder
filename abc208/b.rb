p = gets.chomp.to_i
count = 0
coins = [10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1]
coin = 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
(0..8).each do |i|
  coin = coin / (10 - i)
  coins << coin
end
coins.each do |c|
  count += p / c
  p -= (p / c) * c
end
puts count