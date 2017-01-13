#Build stadium hash
	#add locker room array
		#add items in locker room array
	#add manager's office array
		#add things in manager's office
	#add bathrooms array
		#add objects in array
	#add stands hash
		#add sections to stands using array
		#add people and seats to sections

#BUILD HASH

stadium = {
	"Locker Room" => ['Benches', 'Lockers', 'Towels'],
	"Manager's office" => ['Desk', 'Computer', 'Counch', 'Desk Chair', 'Filing Cabinet'],
	"Bathroom" => ['Faucets', 'Stalls', 'Urinals', 'Toilets', 'Sinks'],
	"stands" => {
		"Section 1" => ['Seats', 'Fans', 'Beer', 'Burgers'],
		"Section 2" => ['Seats', 'Fans', 'Beer', 'Hot Dogs'],
		"Section 3" => ['Seats', 'Fans', 'Hot Dogs', 'Burgers']
	}
}

puts stadium["stands"]["Section 1"][3] 