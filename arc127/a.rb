n=gets.chomp.to_i
def sum_one(n,ans)
  digit = n.to_s.length
  if digit == 1
    return ans + 1
  end
  if n.to_s[0]=='1'
    ans += n % (10 ** (digit - 1)) +  1 + (digit - 1) * (10 ** ( digit - 2))
  else
    ans += 10 ** (digit - 1) + (n - 1) * (digit - 1) * (10 ** (digit - 2))
  end
    return sum_one(n % (10 ** (digit - 1)),ans)
end

puts sum_one(n, 0)
