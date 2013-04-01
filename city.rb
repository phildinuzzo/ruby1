#Asks for the name of 5 cities
#Asks for the population of each city
#Prints the xity with the highest population

class CityData

	def getdata
		puts "Hello! Please enter the name of the first city:"
		c1 = gets.chomp.capitalize
		puts "What is the population of #{c1}?"
		p1 = gets.chomp.to_i

		puts "Awesome! Now tell me the name of the second city:"
		c2 = gets.chomp.capitalize
		puts "What is the population of #{c2}?"
		p2 = gets.chomp.to_i

		puts "Sweet. Ok, now tell me city number three:"
		c3 = gets.chomp.capitalize
		puts "What is the population of #{c3}?"
		p3 = gets.chomp.to_i

		puts "Ok, now tell me the fourth city:"
		c4 = gets.chomp.capitalize
		puts "What is the population of #{c4}?"
		p4 = gets.chomp.to_i

		puts "And tell me just one more city:"
		c5 = gets.chomp.capitalize
		puts "What is the population of #{c5}?"
		p5 = gets.chomp.to_i

		@cityhash = {c1 => p1, c2 => p2, c3 => p3, c4 => p4, c5 => p5}

	end	

	def givedata

		bigcity = @cityhash.max { |k,v| k.last <=> v.last }.first

		bigpop = @cityhash.values.max


		puts "The city with the largest population is #{bigcity} with a population of #{bigpop}!"

	end

end

c = CityData.new
c.getdata
c.givedata



