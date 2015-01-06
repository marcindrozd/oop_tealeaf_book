module Attachable
  def attach_trailer
    puts "Attaching trailer"
  end
end

class Vehicle
  attr_accessor :color, :speed
  attr_reader :year, :model 

  @@vehicles_created = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@vehicles_created += 1
  end

  def self.gas_mileage(gallons, miles)
    puts "It uses #{miles / gallons} mpg of gas."
  end

  def speed_up(number)
    self.speed += number
    puts "You are now going #{speed} miles per hour."
  end

  def brake(number)
    self.speed -= number
    puts "You are now going #{speed} miles per hour."
  end

  def current_speed
    self.speed
  end

  def shut_off
    self.speed = 0
    puts "The car has been turned off"
  end

  def spray_paint(color)
    self.color = color
    puts "The vehicle is now #{color}"
  end

  def to_s
    "This #{self.model} vehicle is from year #{self.year} and its color is #{self.color}."
  end

  def self.vehicles_created
    @@vehicles_created
  end

  def age
    "Vehicle age is #{calculate_age}."
  end

  private

  def calculate_age
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  DOORS = 4

end

class MyTruck < Vehicle
  DOORS = 2
  include Attachable

end

mycar = MyCar.new(2013, "black", "Honda")
puts mycar

mycar.spray_paint("red")
puts mycar

mycar.speed_up(100)
mycar.current_speed

mytruck = MyTruck.new(1997, "yellow", "Scania")
mytruck2 = MyTruck.new(1982, "green", "Jelcz")

mytruck.attach_trailer

puts mytruck.age

puts Vehicle.vehicles_created