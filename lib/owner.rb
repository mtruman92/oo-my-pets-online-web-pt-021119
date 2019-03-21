require "pry"
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
 
 def buy_dog(dog_name)
   dog = Dog.new(dog_name)
   @pets[:dogs] << dog
 end
 
 def walk_dogs
   pets[:dogs].each  do |dog|
     dog.mood = "happy"
 end
 end
 
 def play_with_cats
   pets[:cats].each do |cat|
     cat.mood = "happy"
   end
 end
 
 def feed_fish
   pets[:fishes].each do |fish|
   fish.mood = "happy"
 end
 end
 
 def sell_pets
   pets.each do |type , pets|
     pets.each do |animal|
       animal.mood = 'nervous'
     end
     pets.empty?
   end
 end
  # code goes here
end