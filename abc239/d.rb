a,b,c,d = gets.split.map(&:to_i)

(a..b).each do |tk|
  vflg=1
  (c..d).each do |ak|
    if (tk+ak)==2 || (tk+ak)==3 || (tk+ak)==5 || (tk+ak)==7 || (tk+ak)==11  || (tk+ak)==13 || (tk+ak)==17 || ((tk+ak)%2!=0 && (tk+ak)%3!=0 && (tk+ak)%5!=0 && (tk+ak)%7!=0 && (tk+ak)%11!=0 && (tk+ak)%13!=0 && (tk+ak)%17!=0)
      vflg=0
    end
  end
  if vflg==1
    puts 'Takahashi'
    exit
  end
end
puts 'Aoki'