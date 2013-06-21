class Client
  attr_accessor :name, :age, :gender, :num_kids, :num_of_pets, :avail_pet
  def initialize(name, age, gender, num_kids, num_of_pets)
    @name = name
    @age = age
    @gender = gender
    @num_kids = num_kids
    @num_of_pets = num_of_pets
    @avail_pet = {}
  end

  # def to_s
  #   "Client #{@name} is a #{@age} year old #{@gender}. #{@name} has #{@num_kids} kids and #{@num_of_pets} pets."
  # end

  # def give_pet_to_shelter()

  # end

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
  attr_accessor :animals_to_adopt_list, :client_list
  def initialize()
    @animals_to_adopt_list = {}
    @client_list = {}
  end
end


# Create our lovely shelter called HappiTails
happi_tails = Shelter.new

# Shelter has a few animals to start
# animal_1 = Animal.new("Toto", "Doberman", 4, "Male", "Grass")
animal_1 = Animal.new("Toto", "Doberman", 4, "Male", "Grass")
happi_tails.animals_to_adopt_list[:toto] = animal_1
animal_2 = Animal.new("Gogo", "Mastiff", 2, "Male", "Deer Leg")
happi_tails.animals_to_adopt_list[:gogo] = animal_2
animal_3 = Animal.new("Coco", "Chow Chow", 6, "Female", "Bone")
happi_tails.animals_to_adopt_list[:coco] = animal_3

# David comes in and wants to check out the list of animals available
# puts the animals_to_adopt_list in class shelter
puts "David comes in and wants to check out the list of animals available:"
happi_tails.animals_to_adopt_list.each {|key, value| puts "#{value.name}" }

# Client Kevon comes in to drop off Momo
# create new client object and add new animal object to client's avail_pet
puts "Client Kevon comes in to drop off Momo:"
client_1 = Client.new("Kevon", 23, "Male", 0, 1)
happi_tails.client_list[:kevon] = client_1 #add Kevon to HappiTails' client list
animal_4 = Animal.new("Momo", "Poodle", 3, "Female", "Tennis Ball")
client_1.avail_pet[:momo] = animal_4
# prove momo is dropped off:
client_1.avail_pet.each {|key, value| puts "#{value.name}" }

# Kevon says yes to give Momo to HappiTails
# run two functions, one is getting rid animal from client, the other one is adding animal to shelter
puts "Momo is removed from his boss and added to shelter:"
client_1.avail_pet.delete(:momo) #delete Momo from Kevon
happi_tails.animals_to_adopt_list[:momo] = animal_4 #add Momo to HappiTails
client_1.avail_pet.each {|key, value| puts "#{value.name}" }
happi_tails.animals_to_adopt_list.each {|key, value| puts "#{value.name}" } #checking HappiTails' inventory

# Nick comes in to adopt a dog
# run two functions, one is getting rid animal from shelter, the other one is adding animal to client
puts "Nick comes in to adopt Gogo:"
client_2 = Client.new("Nick", 33, "Male", 2, 2)
happi_tails.client_list[:nick] = client_2 #add Nick to HappiTails' client list
happi_tails.animals_to_adopt_list.delete(:gogo) #delete Gogo from HappiTails
client_2.avail_pet[:gogo] = animal_1 #add Gogo to Nick's pet list
happi_tails.animals_to_adopt_list.each {|key, value| puts "#{value.name}" } #checking HappiTails' inventory

# Chris, the boss, comes in wanting to check out all the clients
# puts the client list in class shelter
puts "Chris, the boss, comes in wanting to check out all the clients:"
happi_tails.client_list.each {|key, value| puts "#{value.name}" }




