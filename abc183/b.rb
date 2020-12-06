sx,sy,gx,gy =gets.split.map(&:to_i)
puts (sy*(gx-sx).to_f/(sy+gy).to_f)+sx