class Client
  attr_accessor :name, :age, :gender, :num_kids, :num_of_dogs, :avail_dog
  def initialize(name, age, gender, num_kids, num_of_dogs)
    @name = name
    @age = age
    @gender = gender
    @num_kids = num_kids
    @num_of_dogs = num_of_dogs
    @avail_dog = []
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
end

class Shelter
  attr_accessor :client_list, :dogs_to_adopt
  def initialize()
    @dogs_to_adopt = []
    @client_list = []
  end
end



happi_tails = Shelter.new
#Shelter has a few animals to start
happi_tails.dogs_to_adopt << Dog.new("Toto", "Doberman", 4, "Male", "Grass")
happi_tails.dogs_to_adopt << Dog.new("Gogo", "Mastiff", 2, "Male", "Deer Leg")
happi_tails.dogs_to_adopt << Dog.new("Coco", "Chow Chow", 6, "Female", "Bone")
#Shelter also has a few clients as well

#Kevon comes to HappiTails with his dog Momo
happi_tails.client_list << client_1 = Client.new("Kevon", 23, "Male", 0, 1)
happi_tails.client_list << client_2 = Client.new("Rachael", 30, "Female", 2, 0)
happi_tails.client_list << client_3 = Client.new("Wyeth", 31, "Male", 1, 0)

client_1.avail_dog << Dog.new("Momo", "Poodle", 3, "Female", "Tennis Ball")

#happi_tails.dogs_to_adopt << client_1.avail_dog

puts "\nHere are our current dogs to adopt: "
happi_tails.dogs_to_adopt.each {|dog|
  puts "_________________________\n Dog Name- " + dog.name;
  puts " Breed- " + dog.breed;
  puts " Age- " + dog.age.to_s;
  puts " Gender- " + dog.gender;
  puts " Toy of choice- " + dog.favorite_toy
}

puts "_________________________\nHere are our current clients: "
happi_tails.client_list.each {|client|
  puts "\nClient name- " + client.name;
  puts "Name- " + client.name;
  puts "Age- " + client.age.to_s;
  puts "Gender- " + client.gender.to_s;
  puts "Number of children- " + client.num_kids.to_s
  puts "Number of dogs- " + client.num_of_dogs.to_s
  puts "Available dog- " + client.avail_dog.to_s
}
