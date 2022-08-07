def level_down(n,a,b,x,y)
 if n==1
   return b
 else
   return level_down(n-1,a+b+a*x,y*(b+a*x),x,y)
 end
end

n,x,y=gets.split.map(&:to_i)
puts level_down(n,1,0,x,y)
