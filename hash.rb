

hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 1, "e" => 10}



		# key1 = hash[hash.keys.max] 

		key1 = hash.max { |k,v| k.last <=> v.last }.first

		val1 = hash.values.max

		puts key1
		puts val1
