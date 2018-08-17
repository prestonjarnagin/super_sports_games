ages = [24, 30, 18, 20, 41]

total = 0.0
ages.each {|x| total += x}
mean = total/ages.length

sigma = 0

ages.each do |x|
  sigma += (x-mean)**2
end

std_dev = Math.sqrt((1.0/ages.length)*(sigma))

#p mean
#p sigma
p std_dev
