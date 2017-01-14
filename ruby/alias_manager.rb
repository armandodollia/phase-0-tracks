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

def aliase (full_name)
	return splitter(full_name.downcase)
end

def splitter (full_name)
	first_name_arr = full_name.split(' ')[0].chars
	last_name_arr = full_name.split(' ')[1].chars

	first_name_scrambled << scrambler(first_name_arr)
	first_name_scrambled[0] = first_name_scrambled[0].upcase
	first_name_scrambled = first_name_scrambled.join('')

	last_name_scrambled << scrambler(last_name_arr)
	last_name_scrambled[0] = last_name_scrambled[0].upcase
	last_name_scrambled = last_name_scrambled.join('')

	encoded_name = last_name_scrambled + " " + first_name_scrambled

	return encoded_name
end

def scrambler (name_arr)
	vowels = ['a', 'e', 'i', 'o', 'u']
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm' 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'w', 'y', 'z']

	name_arr.each do |letter|
		if vowels.index(letter) != nil
			if letter == 'u'
				letter == 'a'
			else
				letter = vowels[vowels.index(letter) + 1]
			end
		elsif consonants.index(letter) != nil
			if letter == 'z'
				letter == 'b'
			else
				letter = consonants[consonants.index(letter) + 1]
			end
		end
		return name_arr
	end
end






p aliase ("Armando Dollia")




