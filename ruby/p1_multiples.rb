def multiplesOf3and5(number)
  (0...number).inject(0) { |sum, i| (i%3 == 0 || i%5 ==0) ? sum + i : sum }
end

puts(multiplesOf3and5(1000) == 233168)
puts(multiplesOf3and5(49) == 543)
puts(multiplesOf3and5(19564) == 89301183)
puts(multiplesOf3and5(8456) == 16687353)