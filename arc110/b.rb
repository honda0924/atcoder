n=gets.chomp.to_i
t=gets.chomp

len=n/3

str=''

(len+2).times do
  str=str+'110'
end
if str.include?(t)
  if t=='1'
    puts 20000000000
  elsif t=='0'
    puts 10000000000
  elsif t=='11'
    puts 10000000000
  elsif t=='10'
    puts 10000000000
  elsif t=='01'
    puts 9999999999
  elsif n%3==0 && str.index(t)==0
    puts 10000000000-len+1
  elsif n%3==2 && str.index(t)==2
    puts 10000000000-len-1
  else
    puts 10000000000-len
  end
else
  puts 0
end