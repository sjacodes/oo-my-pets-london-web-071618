class Owner
  
  attr_reader :species
  attr_accessor :pets, :name
  
  
  OWNERS = []
  
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    OWNERS << self
  end
  
  def self.reset_all
    OWNERS.clear
  end
  
  def self.all
    OWNERS
  end
  
  def self.count
    OWNERS.length
  end
  
  def say_species
    return "I am a #{species}."
  end
  
  def buy_fish
    @pets[:fishes] << Fish.new(name)
  end
    
  
end