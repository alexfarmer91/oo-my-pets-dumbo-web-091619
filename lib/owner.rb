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
   bought_cat = Cat.all.find { |cat_instance| cat_instance.name == cat_name }
   bought_cat.owner = self
   cats
  end 

  def buy_dog(dog_name)
    bought_dog = Dog.all.find { |dog_instance| dog_instance.name == dog_name }
    bought_dog.owner = self
  end 

end