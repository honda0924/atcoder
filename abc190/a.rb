a,b,c=gets.split.map(&:to_i)
if a!=b
  puts a>b ? 'Takahashi': 'Aoki'
else
  puts c==0 ? 'Aoki' : 'Takahashi'
end