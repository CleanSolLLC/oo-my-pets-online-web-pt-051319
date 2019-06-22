require 'pry'

class Owner

  attr_accessor :owner, :name, :mood, :fish, :cat, :dog
  attr_reader :species

  @@all  = []
  @@pets = {:cats=>[], :dogs=>[], :fishes=>[] }

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @name
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @@pets
  end

  def buy_fish(name)
    @@pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @@pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @@pets[:dogs] << Dog.new(name)
  end

end
