n=gets.chomp.to_i
t=gets.chomp.split('')
@position=[0,0]
orient = 'east'
def turn(orient)
  if orient == 'east'
    return 'south'
  elsif orient == 'south'
    return 'west'
  elsif orient == 'west'
    return 'north'
  else
    return 'east'
  end
end
def move(orient)
  if orient == 'east'
    @position[0] += 1
  elsif orient == 'south'
    @position[1] -= 1
  elsif orient == 'west'
    @position[0] -= 1
  else
    @position[1] += 1
  end
end

t.each do |str|
  if str == 'S'
    move(orient)
  else
    orient = turn(orient)
  end
end

puts @position.join(' ')
