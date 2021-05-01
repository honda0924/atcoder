# s=gets.chomp.split('R')
# tmp=''
# s.each do |str|
#   tmp = tmp.reverse + str
# end
# tmp = s[-1] == 'R' ? tmp.reverse : tmp
# tmp_array=tmp.split('')

# puts tmp_array.inject('') { |result, i| result[-1] == i ? result.chop : result + i }
s = gets.chomp.split('')
def convertStr(str, char)
  if char == 'R'
    str = str.reverse
  else
    str = str + char
  end
end
def mergeStr(str, char)
  if str[-1] == char
    str = str.chop
  else
    str = str + char
  end
end
tmp = s.inject{|str, char| convertStr(str, char)}
tmp_array = tmp.split('')
puts tmp_array.inject{|str, char| mergeStr(str, char)}