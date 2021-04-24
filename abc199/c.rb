n=gets.chomp.to_i
s=gets.chomp
q=gets.chomp.to_i
q.times do
  operation = gets.split.map(&:to_i)
  if operation[0] == 2
    sub_str1=s.slice(0, n)
    sub_str2=s.slice(n, n)
    s=sub_str2 + sub_str1
  else
    tmp_char1 = s[operation[1] - 1]
    tmp_char2 = s[operation[2] - 1]
    s = s.slice(0, operation[1] - 1) + tmp_char2 + s.slice(operation[1], operation[2] - operation[1] - 1) + tmp_char1 + (operation[2] == s.length ? '' : s.slice(operation[2], s.length - operation[2]))

  end
end
puts s