n=gets.chomp.to_i
n.times do
  l,r=gets.split.map(&:to_i)
  if 2*l>r
    puts 0
  else
    puts (r-2*l+2)*(r-2*l+1)/2
  end
end