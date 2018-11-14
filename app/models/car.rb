class Car

  attr_reader :make, :model, :owner, :mechanic, :classification
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @owner = owner
    @mechanic = mechanic
    @classification = classification
    #self is the instance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_classifications
    self.all.map { |car| car.classification }.uniq
  end

  def find_mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end























end
