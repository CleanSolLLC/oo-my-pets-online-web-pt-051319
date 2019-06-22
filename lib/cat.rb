require 'pry'

class Cat

  attr_accessor :mood, :owner, :species
  attr_reader

  def initialize(name, mood = "")
    @name = name
    @mood = "nervous"
  end

  def name
    @name.freeze
  end

end
