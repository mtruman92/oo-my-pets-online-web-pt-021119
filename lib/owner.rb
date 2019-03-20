class Owner
  
  attr_accessor :name, :pets
  attr_reader :species
  
 @@all = []
 @@count = 0
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
    @@count += 1 
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@all.clear
    @@count = 0 
  end
 
 def say_species
   "I am a #{@species}."
 end
 
 def buy_fish(fish_name)
   fish = Fish.new(fish_name)
   @pets[:fishes] << fish
 end
 
 def buy_cat(cat_name)
   cat = Cat.new(cat_name)
   @pets[:cats] << cat
 end
  # code goes here
end