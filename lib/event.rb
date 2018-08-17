class Event
  attr_reader :name,
              :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def min_age
    min = ages[0]
    @ages.each do |num|
      if num < min
        min = num
      end
    end
    min
  end

  def max_age
    max = ages[0]
    @ages.each do |num|
      if num > max
        max = num
      end
    end
    max
  end

  def average_age
    total = 0
    @ages.each do |num|
      total += num
    end
    total/@ages.length.round(2)
  end

  def standard_deviation_age
    total = 0.0
    @ages.each {|x| total += x}
    mean = total/ages.length

    sigma = 0

    ages.each do |x|
      sigma += (x-mean)**2
    end
    std_dev = Math.sqrt((1.0/ages.length)*(sigma)).round(2)
  end

end


#curling = Event.new("Curling", [24, 30, 18, 20, 41])
#binding.pry
