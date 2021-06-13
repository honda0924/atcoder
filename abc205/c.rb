a,b,c = gets.split.map(&:to_i)
if c%2 == 0
  if a.abs > b.abs
    puts '>'
  elsif a.abs < b.abs
    puts '<'
  else
    puts '='
  end
else
  if a > b
    puts '>'
  elsif a < b
    puts '<'
  else
    puts '='
  end
end