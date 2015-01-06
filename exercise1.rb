class MyCar
  attr_accessor :color
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(how_much)
    @speed += how_much
  end

  def brake
    @speed = 0
  end

  def shut_off
    @speed = 0
    puts "The car has been turned off"
  end

  def spray_paint(color)
    self.color = color
  end
end

mycar = MyCar.new(2013, "black", "Honda")
puts mycar.year
puts mycar.color
puts mycar.model

mycar.spray_paint("red")
puts mycar.color