n=gets.chomp.to_i

array = (1..2*n+1).to_a
(n+1).times do
  puts array[0]
  STDOUT.flush
  array.delete_at(0)
  aoki = gets.chomp.to_i
  array.delete(aoki)
end