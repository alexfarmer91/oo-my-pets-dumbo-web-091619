require_relative "lib/cat.rb"
require_relative "lib/dog.rb"
require_relative "lib/owner.rb"
require 'pry'

timmy = Owner.new("Timmy")
jess = Owner.new("Jess")
bob = Owner.new("Bob")

cat_1 = Cat.new("Garfield", jess)
cat_2 = Cat.new("Keanu", timmy)
cat_3 = Cat.new("Whiskers", bob)

dog_1 = Dog.new("Fido", jess)
dog_2 = Dog.new("Snuffles", timmy)
dog_3 = Dog.new("Charley", bob)


binding.pry
0