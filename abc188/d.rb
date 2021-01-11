n,c=gets.split.map(&:to_i)
prices=Array.new(1000000000,0)
n.times do
  a,b,c=gets.split.map(&:to_i)
  (a-1..b-1).each do |i|
    prices[i]+=c
  end
end
puts prices
# puts prices.map{|x| [c,x].max}.sum
