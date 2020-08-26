n=gets.to_i
t_array=gets.split(' ').map!{|x| x.to_i}
t_max=t_array[0]
step=0
t_array.each do |t|
  if t >= t_max
    t_max=t
  else
    step += t_max-t
  end
end
puts step