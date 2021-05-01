n,d,h= gets.split.map(&:to_i)
towers = []
height = 0
n.times do 
  tower = gets.split.map(&:to_i)
  towers << tower
end
towers.each do |t|
  height = [height, h - (h-t[1]).to_f * d /(d - t[0])].max
end
puts height