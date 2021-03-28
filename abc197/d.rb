n=gets.chomp.to_i
x,y=gets.split.map(&:to_f)
x_opposite,y_opposite=gets.split.map(&:to_f)
x_center=(x+x_opposite).to_f/2
y_center=(y+y_opposite).to_f/2


rotate_x=x-x_center
rotate_y=y-y_center



x1_rotate=rotate_x*Math.cos(2*Math::PI/n)-rotate_y*Math.sin(2*Math::PI/n)
y1_rotate=rotate_y*Math.cos(2*Math::PI/n)+rotate_x*Math.sin(2*Math::PI/n)



x1=x1_rotate+x_center
y1=y1_rotate+y_center
puts x1.to_s + ' ' + y1.to_s
