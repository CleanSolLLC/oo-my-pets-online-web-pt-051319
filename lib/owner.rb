require 'pry'

class Owner

  attr_accessor :owner, :name, :mood, :fishes, :cat, :dog
  attr_reader :species

  @@all  = []

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
  {:cats=>[], :dogs=>[], :fishes=>[] }
  end

  def buy_fish(name)
    pets.each do |key,value|
      if key == :fishes
        if value.empty?
          pets[:fishes] = Fish.new(name)
          binding.pry
        end
      end
    end
  end
end
        #else
        #  pets[:fishes] << Fish.new(name)
        #end
        #binding.pry
      #end
    #end
  #end

#end
