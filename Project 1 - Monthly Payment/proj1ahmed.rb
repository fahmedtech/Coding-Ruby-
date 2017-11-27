#Faizan Ahmed
#Project 1
#4/5/2015
#Compute the monthly interest payments for a home or car loan.

#prompt for principal
STDERR.print "Enter loan amount (principal): "
principal = STDIN.gets.chomp.to_f
if principal < 0 
	print "please enter non-neg number"
	exit
end

#prompt for rate
STDERR.print "Enter your interest rate (in percent): "
rate = STDIN.gets.chomp.to_f
if rate < 0
	print "please enter non-neg number"
	exit
end

#prompt for number of years
STDERR.print "Enter number of years (duration of loan): "
number = STDIN.gets.chomp.to_f
if number < 0
	print "please enter non-neg number"
	exit
end

#computation of monthly payment
monthly_payment = (principal * rate/1200.0)/(1 - (1.0 + rate/1200.0)**(-12*number))

#output
STDOUT.print "Your monthly payment is $", monthly_payment.round(2) , "\n"