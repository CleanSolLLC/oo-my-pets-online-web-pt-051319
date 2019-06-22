require 'pry'

class Fish

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
