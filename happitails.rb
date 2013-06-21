class Client
  attr_accessor :name, :age, :gender, :num_kids, :num_of_dogs
  def initialize(name, age, gender, num_kids, num_of_dogs)
    @name = name
    @age = age
    @gender = gender
    @num_kids = num_kids
    @num_of_dogs = num_of_dogs
  end

    def to_s
        "#{@name}, #{@gender}: #{@age} year-old with #{@num_kids} kids and #{@num_of_dogs} dogs"
    end

  def give_dog(name, breed, age, gender, favorite_toy)
    puts "#{name}, a #{age} year-old #{breed} entered HappiTails\n\n"
    return Dog.new(name, breed, age, gender, favorite_toy)
  end
end

class Dog
  attr_accessor :name, :breed, :age, :gender, :favorite_toy
  def initialize(name, breed, age, gender, favorite_toy)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @favorite_toy = favorite_toy
  end

  def to_s
    dog = "#{name}, #{breed}, #{age}, #{gender} "
    return dog
  end
end

#Removed Shelter for bare functions

def list_dogs(adoptable_dogs)
  adoptable_dogs.each {|dog| puts dog}
end

def list_clients (clients)
  clients.each do |client|
    puts client
  end
end

adoptable_dogs = []
list_clients = []

#Shelter has a few clients already
list_clients << Client.new("Kevon", 23, "Male", 0, 1)
list_clients << Client.new("Sarah", 20, "Female", 0, 0)
list_clients << Client.new("Brenda", 30, "Female", 2, 2)

#Shelter has a few dogs
adoptable_dogs << Dog.new("Toto", "Doberman", 4, "Male", "Grass")
adoptable_dogs << Dog.new("Gogo", "Mastiff", 2, "Male", "Deer Leg")
adoptable_dogs << Dog.new("Coco", "Chow Chow", 6, "Female", "Bone")

puts "\nHere are our current dogs up for adoption~ "
list_dogs(adoptable_dogs)

#need this to allow kevon to give dog to adoptable_dogs
kevon = Client.new("Kevon", 23, "Male", 0, 1)

puts "\nOh wait! Kevon is giving his dog to the shelter..."
adoptable_dogs << kevon.give_dog("Momo", "Poodle", 3, "Female", "Tennis Ball")

puts "\nHere are our current clients: "
list_clients(list_clients)
