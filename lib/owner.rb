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
    @pets = {:dogs => [], :cats => [nil]}
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
    cat_1
  end
  
   
    
    

  
  
  
end