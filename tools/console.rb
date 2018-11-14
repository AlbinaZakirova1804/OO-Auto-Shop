require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

brian = Owner.new("Brian")
amir = Owner.new("Amir")
eric = Owner.new("Eric")

manny = Mechanic.new("Manny", "Sports")
anik = Mechanic.new("Anik", "SUV")
raq = Mechanic.new("Raquel", "Sports")


car1 = Car.new("BMW", "M4", "Sports", amir, manny)
car2 = Car.new("Range Rover", "HSE", "SUV", brian, anik)

binding.pry
"0"
