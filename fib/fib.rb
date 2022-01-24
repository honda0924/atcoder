def fib(n)
  return n<3 ? 1 : fib(n-1)+fib(n-2) 
end
n=gets.chomp.to_i
puts fib(n)