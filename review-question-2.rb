# Finish the implementation of the Car class so it has the functionality described below

class Car

    attr_accessor :make, :model 

    @@all = []

    def initialize(make_param, model_param)
        @make = make_param
        @model = model_param
        @@all << self
    end

    def self.drive 
        "VROOOOOOOOOOOOM!"
    end

    def self.all 
        @@all
    end

end

volvo_lightning = Car.new("Volvo", "Lightning")
yugo = Car.new("Zastava", "Yugo")
lada = Car.new("AvtoVAZ", "Lada")

p volvo_lightning.make
#=> "Volvo"
p volvo_lightning.model
#=> "Lightning"

p Car.drive
# => "VROOOOOOOOOOOOM!"

p Car.all
#=> [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]


# BONUS:

# p volvo_lightning = Car.new(make: "Volvo", model: "Lightning")

# p volvo_lightning.make
# #=> "Volvo"
# p volvo_lightning.model
# #=> "Lightning"
