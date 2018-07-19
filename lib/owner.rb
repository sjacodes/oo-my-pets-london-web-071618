class Owner
  
  attr_accessor :pets, :name
  
  OWNERS = []
  
  
  def initialize(pets)
    @name = name
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
  
end