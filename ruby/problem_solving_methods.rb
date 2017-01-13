# Array: Take a number and return it's index in relation to the array
arr = [42, 89, 23, 2]
def search_arr (arr, integer)		
	new_arr = [] 
	arr.each do |number|
	new_arr << number
		if (number == integer)
			return new_arr.length - 1
		elsif (new_arr.length == arr.length)
			return nil
		end
	end
end
puts "The index of 23 in #{arr} = #{search_arr(arr, 23)}"

# Take the number and generate an array that is the length of the number.

# Input => One number
def fib (number)
	fib_arr = [0, 1]
	(number-2).to_i.times do 
	# reccure over this method x times (number = x)
	# -1 + - 2 ==> new number
	fib_arr << fib_arr[-1].to_i + fib_arr[-2].to_i
	end
	return fib_arr
end
# Output => an array of numbers

#Test if results are correct
calculated_sequence = fib(100) #Store arary to a variable (Takes a while tomcompute multiple times)
if calculated_sequence[-1] == 218922995834555169026 #Check last value for match
	puts "It Works!!! #{calculated_sequence[-1]} equals 218922995834555169026"
else
	puts "Fix your code! #{calculated_sequence[-1]} does not equal 218922995834555169026"
end

#Bubble sort

#Create array of elements

#define bubble sort method accepting the array to be sorted
	#define swapped object and set to true
	#start loop
		#set boolean value swapped to false
		

















