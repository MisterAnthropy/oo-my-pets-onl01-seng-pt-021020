require 'pry'

class Owner
  attr_accessor :owner, :pets 
  attr_reader :species, :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @owner = owner
    @species = "human"
    #binding.pry
    @@all << self
    
  end
 
  def say_species
     @owner = "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size 
  end
 
  def self.reset_all
    @@all.clear 
  end
  
  def cats 
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs 
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
   all_pets = self.cats + self.dogs
   all_pets.each do |sell|
     sell_pet(sell)
   end
 end
 
 def sell_pet(pet)
   pet.owner = nil
   pet.mood = "nervous"
 end
 
 def list_pets
   num_of_dogs = self.dogs.count
   num_of_cats = self.cats.count
   "I have #{num_of_dogs} dog(s), and #{num_of_cats} cat(s)."
 end
 
    

  
  
 
  
   
    
    

  
  
  
end