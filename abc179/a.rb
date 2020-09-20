s=gets.chomp.split('')
if s[s.length-1]=='s'
  s << 'e'
end
s << 's'

puts s.join
