class Owner
  
  attr_accessor :name
  attr_reader :species
  
 @@all = []
 @@count = 0
  
  def initialize(species)
    @species = species
    @@all << self
    @@pets = {fishes: [], dogs: [], cats: []}
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
 
 def buy_fish(fish_name)
   fish = Fish.new(fish_name)
 end
  # code goes here
end