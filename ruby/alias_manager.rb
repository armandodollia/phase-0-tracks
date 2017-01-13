#Create alias method accepting name
	#call splitter method feeding it all lowercase name

#Create splitter method accepting an array
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
