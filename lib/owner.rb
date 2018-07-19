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
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
    
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs].each do |name|
      name.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |name|
      name.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |name|
      name.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.each do |species, pets|
      pets.each do |name|
        name.mood = "nervous"
      end
    
    
  
# describe "#sell_pets" do
#       it 'can sell all its pets, which make them nervous' do
#         fido = Dog.new("Fido")
#         tabby = Cat.new("Tabby")
#         nemo = Fish.new("Nemo")
#         [fido, tabby, nemo].each {|o| o.mood = "happy" }
#         owner.pets = {
#           :dogs => [fido, Dog.new("Daisy")],
#           :fishes => [nemo],
#           :cats => [Cat.new("Mittens"), tabby]
#         }
#         owner.sell_pets
#         owner.pets.each {|type, pets| expect(pets.empty?).to eq(true) }
#         [fido, tabby, nemo].each { |o| expect(o.mood).to eq("nervous") }
#       end
#     end

      
      
  
end