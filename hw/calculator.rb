require 'pry'

def calculate(operation,num1,num2)
	case operation
	when 1
		puts "#{num1} + #{num2} is: #{num1 + num2}"
	when 2
		puts "#{num1} - #{num2} is: #{num1 - num2}"
	when 3
		puts "#{num1} * #{num2} is: #{num1 * num2}"
	else 
		puts "#{num1} / #{num2} is: #{num1 / num2}"
	end 
 end	 	 


def is_number(data)
	 data.to_i.to_s == data.to_s || data.to_f.to_s == data.to_s 
end

def start_operation
	begin
		puts "Choose your operation"
		puts "1) plus 2) minus 3)multiply 4)devide"
		operation = gets.chomp.to_i
	end while ![1,2,3,4].include?(operation)

	return operation
end

operation = start_operation()
num1,num2=0,0

  begin
  	puts "Input first number."
  	num1 = gets.chomp
  end while !is_number(num1)
  num1 = num1.to_f
  begin 
  	puts "Input second number."
  	num2 = gets.chomp
  end while !is_number(num2) 
  num2 = num2.to_f

calculate(operation,num1,num2)

