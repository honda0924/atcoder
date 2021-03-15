n,m,q = gets.split.map(&:to_i)
baggage_array = []
n.times do
  w,v = gets.split.map(&:to_i)
  baggage_array << [w,v]
end
box_array = gets.split.map(&:to_i)
