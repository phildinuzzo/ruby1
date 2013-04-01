
module Yeller

	def speak message
		puts "I SAID: #{message.upcase}"
	end
end

module Whisper

	def speak message
		puts "i said: #{message.downcase}"
	end
end

class Person

	include Yeller
	include Whisper

	attr_accessor :name, :hair_color, :age, :height, :weight


    def speak message
    	super
    end

	def initialize 
		@name = ''
		@hair_color = ''
		@age = 0
		@height = 0
		@weight = 0
	end
end

