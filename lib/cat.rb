class Cat
  
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name)
    @name = name
  end
  
  def initialize(mood)
    @mood = mood
  end
  # code goes here
end