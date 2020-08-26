# initial_array=gets.split(' ').map!{|x| x.to_i}
# h=initial_array[0]
# w=initial_array[1]
# m=initial_array[2]
# bomb_array=[]
# hit=0
# (1..m).each do |b|
#   b=gets.split(' ').map!{|x| x.to_i}
#   bomb_array << b
# end
# (0..h-1).each do |i|
#   (0..w-1).each do |j|
#     hit_count=0
#     bomb_array.each do |bomb|
#       if bomb[0]==i+1 || bomb[1]==j+1
#         hit_count+=1
#       end
#     end
#     if hit_count > hit
#       hit = hit_count
#     end
#   end
# end
# puts hit

