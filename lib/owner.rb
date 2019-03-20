class Owner
  
  attr_accessor 
  attr_reader :species
  
  def initialize(species)
    @species = species
  end
  
  def initialize(pets = {'x,y,z'})
    @pets = pets
  end
  # code goes here
end