require 'prime'

n=gets.chomp.to_i
primes = []
ans_array = []

Prime.each(n).each{|prime|
  primes << prime
}

(1..n).each do |i|
  if i == 1
  ans_array << 1
  else
    factors = i.prime_division
    ans_array << factors.map{ |a| a[1]}.sum + 1
  end
end
puts ans_array.join(' ')

# (1..n).each do |i|
#   if i == 1
#     ans_array << 1
#   else
#     if primes.include?(i)
#       ans_array<<2
#     else
#       j=1
#       primes.each do |prime|
#         k=1
#         while true do
#           if i % (prime**k) == 0
#             j += 1
#             k += 1
#           else
#             break
#           end        
#         end
#       end
#       ans_array << j
    
#     end

  
#   end
# end

# puts ans_array.join(' ')