#Faizan Ahmed
#Project 5 - Unscramble Jumble Strings

#Method 1: Converts string object to an array
def to_array(word)
	arr = []
	word.each_char do |x|
		arr << x 			#appending to array arr[]
	end
	return arr
end


#Method 2: Returns array of all permutations of Jumble string
def get_permutations(words)
	arr2 = []
	words.permutation(words.length) do |y|
		arr2 << y.join   #appending to array arr2[] with joining the letters
	end
	return arr2
end

#Testing scripts in comment
s = "dog"
a = to_array(s)
print a, "\n"

s2 = "lion"
a2 = to_array(s2)
print a2, "\n"

a = ["d","o","g"]
perms = get_permutations(a)
print perms, "\n"

a2 = ["l","i","o","n"]
perms2 = get_permutations(a2)
print perms2, "\n"


#Input Scanner Object to read from keyboard
print "Enter Word to jumble: "
jumble_word = STDIN.gets.chomp
jumble_arr = to_array(jumble_word)
jumble_perms = get_permutations(jumble_arr)

#Comparing and Printing the word in the Unix dictionary.
fin = File.open("dict.txt", "r")
while line = fin.gets
	word = line.chomp
	#Conditions
	if word == word.downcase || word == word.capitalize || word == word.upcase
		jumble_perms.each do |perm|
			#If the match in unix dictionary is found, print the word
			if perm == word
				print word, "\n"
				exit
			end
		end
	end
end

#Closing the file
fin.close


