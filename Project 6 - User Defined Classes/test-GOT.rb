# Test GameOfThrones class.

require './GameOfThrones.rb'
require 'yaml'

#creating GameOfThrones character object.
got1 = GameOfThrones.new("Tyrion Lannister", 53, "M", "House Lannister", "Volantis")

# Print object.
STDOUT.print got1.to_s, "\n\n"

#testing getters
print "GETTER TESTS: \n"
print "Name: ", got1.character_name, "\n"
print "Age: ", got1.character_age, "\n"
print "Gender: ", got1.character_gender, "\n"
print "House: ", got1.house_of_allegiance, "\n"
print "Location: ", got1.location, "\n\n"

#testing setters
print "SETTER TESTS: \n"
print "New Age: ", got1.character_age = 37, "\n"
print "Current New Location: ", got1.location = "Winterfell", "\n\n"

#testing regular methods
print got1.life_status, "\n"
print "Is char dead?  #{got1.isCharDead?}\n"
print got1.rand_weapon, "\n\n"

#testing YAML method
STDOUT.print got1.to_yaml





