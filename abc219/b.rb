s1=gets.chomp
s2=gets.chomp
s3=gets.chomp
ans = []
t=gets.chomp.split('').map(&:to_i)
t.each do |s|
  if s==1
    ans << s1
  elsif s==2
    ans << s2
  else
    ans << s3
  end
end 
puts ans.join