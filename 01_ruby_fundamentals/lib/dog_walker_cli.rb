def start_cli
  puts "Hi there! Welcome to the Dog Walker CLI!".yellow
end

# define a method `print_menu_options` which outlines the user's
# choices. The choices will be displayed as a numbered list like so:
#   1. List all dogs
#   2. Add a dog
# At any time, type "menu" to see these options again or "exit" to
# leave the program
def print_menu_options
  puts"Here are your options:
  1. List all dogs
  2. Add a dog"
  puts"At any time, type 'menu' to see these options again or \"exit\" to
  leave the program"
end



# define a method `ask_for_choice` which prompts the user for input
# if the user types "exit" we'll print a message thanking them
# for using the CLI and invoke exit to terminate the program
# otherwise, return whatever the user typed in

def ask_for_choice
  cowabunga = gets.chomp
  if cowabunga == "exit"
    puts"Thanks for using the Dog Walker CLI PEACE!" 
    exit
  end
  cowabunga
end



# define a `print_dog` method that accepts a dog hash as a parameter
# and prints out the dog's details that looks like this:
=begin
  
Lennon Snow
  Age: Almost 2
  Breed: Pomeranian
  Image URL: https://res.cloudinary.com/dnocv6uwb/image/upload/v1609370267/dakota-and-lennon-square-compressed_hoenfo.jpg

=end

def print_dog(dog_hash)
  puts dog_hash[:name].red
  puts "Age: #{dog_hash[:age]}"
  puts "Breed: #{dog_hash[:breed]}"
  puts "Image Url: #{dog_hash[:image_url]}"
end



# define a method `list_dogs` that will iterate over an array of
# dog hashes and call print_dog on each one.

def list_dogs(dog_arr)
  dog_arr.each do |antyhong|
    print_dog(antyhong)
  end
end




# define an `add_dog` method which accepts an array of dog
# hashes as an argument. It should:
# ask the user for input of the
# dog's name, age, breed and image_url. 
# Take this information and put it into a hash
# add the hash to the dogs array passed as an argument
# print the newly added dog

def add_dog splinter
  print "Please enter your dog's name "
  name = ask_for_choice
  print "Please enter your dog's age "
  age = ask_for_choice
  print "Please enter your dog's breed "
  breed = ask_for_choice
  print "Please enter your dog's image url "
  image_url = ask_for_choice
  # all_dogs.push({name: name, age: age, breed: breed, image_url: image_url})
  splinter << ({:name => name, :age => age, :breed => breed, :image_url => image_url})
  print_dog ({:name => name, :age => age, :breed => breed, :image_url => image_url})
  print_menu_options

end


# define a method `handle_choice` which will take a `choice` as a 
# parameter and handle it in the appropriate way based on the menu
# option that was chosen

def handle_choice choice
  if choice == "1"
    list_dogs($dogs)
  elsif choice == "2"
    add_dog($dogs)
  elsif choice == "debug"
    binding.pry
  else
    puts "oops you messed up, please try again."
  end
end



