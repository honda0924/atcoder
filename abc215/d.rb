require 'prime'
n,m=gets.split.map(&:to_i)
array=gets.split.map(&:to_i)
primes=[]
Prime.each(m).each {|prime|
  primes << prime
}
array.each do |a|
  lcm_primes = lcm_primes - a.prime_division.map{|x|x[0]}
end
lcm_primes

# compared_number = lcm_primes.flatten.uniq.inject(:*)
# answers=[]
# (1..m).each do |i|
#   if i.gcd(compared_number) == 1
#     answers << i
#   end      
# end
# puts answers.length
# answers.each do |i|
#   puts i
# end