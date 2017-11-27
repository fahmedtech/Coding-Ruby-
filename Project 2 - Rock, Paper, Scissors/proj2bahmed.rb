=begin
Name: Faizan Ahmed
Project 2: Rock Paper Scissor Lizard Spock
*Ruby script that allows a human player to play 
the Rock-Paper-Scissors-Lizard-Spock game against the computer.
=end

#Initialized value
human_score = 0.0
pc_score = 0.0

#While loop - boolean 
while true
	
	#user input - value gets stored in "human_play"
	STDERR.print "\nEnter human play (rock, paper, scissors, lizard, spock): "
	human_play = STDIN.gets.chomp
	
	#randomly generate a number from (0..4)
	rand_num = rand(5)
	
	if rand_num == 0
		comp_play = "rock"
	elsif rand_num == 1
		comp_play = "paper"
	elsif rand_num == 2
		comp_play = "scissors"
	elsif rand_num == 3
		comp_play == "lizard"
	elsif rand_num == 4
		comp_play == "spock"
	end
	
	if human_play == "rock" && comp_play == "rock"
		res = "Computer plays Rock. \nTie."
		human_score += 0.5
		pc_score += 0.5
	elsif human_play == "rock" && comp_play == "paper"
		res = "Computer plays Paper. \nPaper covers Rock. \nComputer Wins!"
		pc_score += 1.0
	elsif human_play == "rock" && comp_play == "scissors"
		res = "Computer plays Scissors. \nRock crushes Scissors. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "rock" && comp_play == "lizard"	
		res = "Computer plays Lizard. \nRock crushes Lizard. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "rock" && comp_play == "spock"
		res = "Computer plays Spock. \nSpock vaporizes Rock. \nComputer Wins!"
		pc_score += 1.0
	elsif human_play == "paper" && comp_play == "rock"
		res = "Computer plays Rock. \nPaper covers Rock. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "paper" && comp_play == "paper"
		res = "Computer plays Paper. \nTie."
		human_score += 0.5
		pc_score += 0.5
	elsif human_play == "paper" && comp_play == "scissors"
		res = "Computer plays Scissors. \nScissors cuts Paper. \nComputer Wins!"
		pc_score += 1.0
	elsif human_play == "paper" && comp_play == "lizard"
		res = "Computer plays Lizard. \nLizard eats Paper. \nComputer Wins!"
		pc_score += 1.0
	elsif human_play == "paper" && comp_play == "spock"
		res = "Computer plays Spock. \nPaper disproves Spock. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "scissors" && comp_play == "rock"
		res = "Computer plays Rock. \nRock crushes Scissors. \nComputer Wins!"
		pc_score += 1.0
	elsif human_play == "scissors" && comp_play == "paper"
		res = "Computer plays Paper. \nScissors cuts Paper. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "scissors" && comp_play == "scissors"
		res = "Computer plays Scissors. \nTie."
		human_score += 0.5
		pc_score += 0.5
	elsif human_play == "scissors" && comp_play == "lizard" 
		res = "Computer plays Lizard. \nScissors decapitates Lizard. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "scissors" && comp_play == "spock"
		res = "Computer plays Spock. \nSpock smashes Scissors. \nComputer Wins!"
		pc_score += 1.0
	elsif human_play == "lizard" && comp_play == "lizard"
		res = "Computer plays Lizard. \nTie."
		human_score += 0.5 
		pc_score += 0.5
	elsif human_play == "lizard" && comp_play == "rock"
		res = "Computer plays Rock. \nRock crushes Lizard. \nComputer Wins!"
		pc_score += 1.0
	elsif human_play == "lizard" && comp_play == "paper"
		res = "Computer plays Paper. \nLizard eats Paper. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "lizard" && comp_play == "scissors"
		res = "Computer plays Scissors. \nScissors decapitates Lizard. \nComputer Wins!"
		pc_score += 1.0
	elsif human_play == "lizard" && comp_play == "spock"
		res = "Computer plays Spock. \nLizard poisons Spock. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "spock" && comp_play == "spock"
		res = "Computer plays Spock. \nTie."
		human_score += 0.5 
		pc_score += 0.5
	elsif human_play == "spock" && comp_play == "rock"
		res = "Computer plays Rock. \nSpock vaporizes Rock. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "spock" && comp_play == "paper"
		res = "Computer plays Paper. \nPaper disproves Spock. \nComputer Wins!"
		pc_score += 1.0
	elsif human_play == "spock" && comp_play == "scissors"
		res = "Computer plays Scissors. \nSpock smashes Scissors. \nHuman Wins!"
		human_score += 1.0
	elsif human_play == "spock" && comp_play == "lizard"
		res = "Computer plays Lizard. \nLizard poisons Spock. \n Computer Wins!"
		pc_score += 1.0
	end
	
	#output the result to the screen
	STDOUT.print res, "\n"
	STDOUT.print "Score: Human= ", human_score, ", Computer= ", pc_score, ".\n"
end

