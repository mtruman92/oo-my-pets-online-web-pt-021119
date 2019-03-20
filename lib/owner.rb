class Owner
  
  attr_accessor 
  attr_reader :species
  
 @@all = []
 @@count = 0
  
  def initialize(species)
    @species = species
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@all.clear
  end
 
 def say_species
   "I am a #{@species}."
 end
  # code goes here
end