main_str=gets.split('')
sub_str=gets.split('')
ans_array=[]
def chk_match(m,s,i)
  cnt=0
  (0..s.length-1).each do |j|
    if s[j] == m[i+j]
      cnt += 1
    end
  end
  return cnt
end
(0..main_str.length-sub_str.length).each do |k|
  ans_array << chk_match(main_str,sub_str,k)
end
puts sub_str.length - ans_array.max