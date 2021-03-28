h,w,x,y=gets.split.map(&:to_i)
map_array=[]
h.times do
  wide = gets.chomp.split('')
  map_array << wide
end

ans =0
xr=x
xl=x
yt=y
yb=y
while xr < h+1 do
  if map_array[xr-1][y-1]=='.'
    ans += 1
    xr += 1
  else
    break
  end
end
while xl>0 do
  if map_array[xl-1][y-1]=='.'
  
    ans += 1
    xl -= 1
  else
    break
  end
end
while yb<w+1 do
  if map_array[x-1][yb-1]=='.'

    ans += 1
    yb += 1
  else
    break
  end
end
while yt>0 do
  if map_array[x-1][yt-1]=='.'

    ans += 1
    yt -= 1
  else
    break
  end
end

puts ans - 3