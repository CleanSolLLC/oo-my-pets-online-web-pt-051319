require 'pry'

class Owner

  attr_accessor :owner, :name, :mood, :fish, :cat, :dog
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
    Hash.new { |hash, key| hash[key] = [] }
    [:fishes][:dogs][:cats]
  end

end
