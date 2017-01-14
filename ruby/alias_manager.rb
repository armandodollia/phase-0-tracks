#Create alias method accepting name
	#call splitter method feeding it all lowercase name

#Create splitter method accepting a string
	#Split first and last name into array using .split(' ') and store index[0].chars to first_name_arr
	#Split first and last name into array using .split(' ') and store index[1].chars to last_name_arr
	#call scrambler(first_name_arr)[0].upcase.join and store to first_name_scrambled
	#call scrambler(last_name_arr)[0].upcase.join and store to last_name_scrambled
	#combine last_name_scrambled a space and first_name_scrambled and store to encoded_name
	#return encoded_name

#Create scrambler method accepting (name) array
	#iterate through the array using .each
		#if letter is in array ['a', 'e', 'i', 'o', 'u']
			#replace the letter with the letter in the next index of the array ['a', 'e', 'i', 'o', 'u']
			#if letter is 'u'
				#replace it with 'a'
		#elsif letter is in array ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm' 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'w', 'y', 'z']
			#replace the letter with the letter in the next index of the array ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm' 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'w', 'y', 'z']
			#if letter is 'z'
				#replace with 'b'
	#return scrambled array

def alias_generator (full_name)
	return splitter(full_name.downcase)
end

def splitter (full_name)
	first_name_arr = full_name.split(' ')[0].chars
	last_name_arr = full_name.split(' ')[1].chars

	first_name_scrambled = scrambler(first_name_arr)
	first_name_scrambled[0] = first_name_scrambled[0].upcase
	first_name_scrambled = first_name_scrambled.join('')

	last_name_scrambled = scrambler(last_name_arr)
	last_name_scrambled[0] = last_name_scrambled[0].upcase
	last_name_scrambled = last_name_scrambled.join('')

	last_name_scrambled + " " + first_name_scrambled
end

def scrambler (name_arr)
	vowels = ['a', 'e', 'i', 'o', 'u']
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'w', 'y', 'z']

	name_arr.map do |letter|
		if vowels.include?(letter)
			next_index_vowels = (vowels.index(letter).to_i + 1) % vowels.length
			vowels[next_index_vowels]

		elsif consonants.include?(letter)
			next_index_consonants = (vowels.index(letter).to_i + 1) % consonants.length
			consonants[consonants.index(letter).to_i + 1]
		end
	end
end

def alias_printer (paired_name_nested_array)
	paired_name_nested_array.each do |paired_name_array|
		"#{paired_name_nested_array[0]} is also known as #{paired_name_nested_array[1]}"
end

#User Interface

puts "Please enter the first and last name to be encoded, type 'quit' when done"
name_input = ''
paired_name_nested_array = []
paired_name_array = []

until name_input == 'quit'
	name_input = gets.chomp
		if name_input == 'quit'
			puts "Thank you for using our wonderful service"
		else
			encoded_name = alias_generator(name_input)
			puts "#{encoded_name}"
			paired_name_nested_array << (paired_name_array[0], paired_name_array[1] = name_input, encoded_name)
		end
end

puts alias_printer(paired_name_nested_array)

