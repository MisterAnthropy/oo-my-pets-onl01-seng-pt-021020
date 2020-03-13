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
    

  
  
 
  
   
    
    

  
  
  
end