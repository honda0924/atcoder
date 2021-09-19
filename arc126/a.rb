t=gets.chomp.to_i
def make10(a,b,c)
  ans = 0
  b /= 2
  if b > c
    ans += c
    b -= c
    if a < b * 2
      ans += a / 2
    else
      ans += b
      a -= b * 2
      ans += a / 5
    end 
  elsif b == c
    ans += c
    ans += a / 5
  else
    ans += b
    c -= b
    if c / 2 > a
      ans += a
    else
      ans += c / 2
      a -= c / 2
      if c % 2 == 1 && a >= 3
        ans += 1 + (a - 3) / 5
      else
        ans += a / 5
      end
    end
  end
  return ans
end
t.times do
  a,b,c = gets.split.map(&:to_i)
  puts make10(a,b,c)
end