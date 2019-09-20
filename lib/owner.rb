class Owner

 attr_accessor 
 attr_reader :species, :name

 @@all = []

 def initialize(name , species = "human")
  @name = name 
  @species = species
  @@all.push(self)
 end 

  def say_species
    "I am a #{self.species}."
  end 

  def self.all
   @@all
  end 

  def self.count
   @@all.length
  end 

  def self.reset_all
   @@all = []
  end 

  def cats
   Cat.all.select { |cat_instance| cat_instance.owner == self }
  end 

  def dogs
    Dog.all.select { |dog_instance| dog_instance.owner == self }
  end 

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end 

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end 

  def walk_dogs
   self.dogs.each { |my_dog| my_dog.mood = "happy" }
  end 

  def feed_cats
    self.cats.each { |my_cat| my_cat.mood = "happy" } 
  end 

  def sell_pets
   my_pets.each { |pet|
    pet.owner = nil
    pet.mood = "nervous"
   }
  end 

  def list_pets
   "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
   #I have 2 dog(s), and 2 cat(s).
  end 

  private 

  def my_pets
   self.cats + self.dogs
  end 

end