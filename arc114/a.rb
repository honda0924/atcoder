prime_array = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]
ans_array=[]
n=gets.chomp.to_i
int_array=gets.split.map(&:to_i)

int_array.each do |i|
  prime_array.each do |prime|
    if i % prime == 0
      ans_array << prime
      break
    end
  end
end
puts ans_array.uniq.inject(:*)