require 'pry'

class Dog

  attr_accessor :mood, :owner
  attr_reader

  def initialize(name, mood = "")
    @name = name
    @mood = "nervous"
  end

  def name
    @name.freeze
  end

end
