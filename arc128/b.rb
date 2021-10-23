n=gets.chomp.to_i
n.times do
  r,g,b=gets.split.map(&:to_i).sort


  ans = 3*g
  if (g-r)%3==0
    ans=r
  end
  if (b-r)%3==0
    ans=[b,ans].min
  end
  if (b-g)%3==0
    ans=[g,ans].min
  end
  puts ans==3*g ? -1 : ans
end