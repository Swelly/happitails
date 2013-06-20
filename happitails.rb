class Client
  attr_accessor :name, :age, :gender, :num_kids, :num_of_pets, :avail_pet
  def initialize(name, age, gender, num_kids, num_of_pets, avail_pet)
    @name = name
    @age = age
    @gender = gender
    @num_kids = num_kids
    @num_of_pets = num_of_pets
    @avail_pet = []
  end

  def give_pet_to_shelter(pet)


end

class Animal
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
  attr_accessor :animals_to_adopt, :client_list, :animal_not_to_adopt_list
  def initialize()
    @animals_to_adopt = []
    @client_list = []
    @animal_not_to_adopt_list = []
  end
end



happi_tails = Shelter.new
# Shelter has a few animals to start
happi_tails.animals_to_adopt << Animal.new("Toto", "Doberman", 4, "Male", "Grass")
happi_tails.animals_to_adopt << Animal.new("Gogo", "Mastiff", 2, "Male", "Deer Leg")
happi_tails.animals_to_adopt << Animal.new("Coco", "Chow Chow", 6, "Female", "Bone")

# Client Kevon comes in to drop off Momo
client_1 = Client.new("Kevon", 23, "Male", 0, 1, 1)
client_1.avail_pet << Animal.new("Momo", "Poodle", 3, "Female", "Tennis Ball")

