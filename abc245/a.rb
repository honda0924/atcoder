a,b,c,d=gets.split.map(&:to_i)
takahashi=a*60+b
aoki=c*60+d
puts takahashi <= aoki ? 'Takahashi' : 'Aoki'