x1,y1,x2,y2 = gets.split.map(&:to_i)
d=(x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)
puts (d==2 || d==4 ||d==10 || d==16 || d==18 || d==20)? 'Yes' : 'No'