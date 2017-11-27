#Faizan Ahmed
#Project 6
#User Defined Class - GameOfThrones.rb

class GameOfThrones
	
	#initialize method to invoke GameOfThrones.new
	def initialize(char_name, char_age, char_gender, char_house, char_location)
		@name = char_name
		@age = char_age
		@gender = char_gender
		@house = char_house
		@location = char_location
	end
	
	#defining getter methods
	def character_name
		return @name
	end
	
	def character_age
		return @age
	end
	
	def character_gender
		return @gender
	end
	
	def house_of_allegiance
		return @house
	end
	
	def location
		return @location
	end
	
	#defining setter methods
	def character_age=(value)
		@age = value
	end
	
	def location=(new_location)
		@location = new_location
	end
	
	#----- REGULAR Methods -----
	
	#this method checks whether the character is alive or dead
	def life_status
		if @age <= 50
			STDOUT.print "Alive!"
		else
			STDOUT.print "Dead!"
		end
	end
	
	#boolean method checks whether character is dead
	def isCharDead?
    if @age <= 50
      return false
    else
      return true
    end
  end  
  
  #randomly assigns a weapon to the character
  def rand_weapon
  	random_num = rand(0..2)
  	if isCharDead? == false
  		if random_num == 0
  			STDOUT.print "this character is unarmed"
  		elsif random_num == 1
  			STDOUT.print "this character is armed with a sword"
  		elsif random_num == 2
  			STDOUT.print "this character is armed with a bow/arrow"
  		end
  	else
  		STDOUT.print "cannot assign weapon, character is dead"
  	end
  end
  
  #to_string() method
  def to_s
  	return "Name: #{@name}, Age: #{@age}, Gender: #{@gender},\nAllegiance: #{@house}, Current Location: #{@location}"
  end
  
end