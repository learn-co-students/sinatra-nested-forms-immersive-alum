class Pirate

	attr_accessor :name, :weight, :height
	@@ALL = []

	def initialize(name, weight, height)
		@name, @weight, @height = name, weight, height
		@@ALL << self
	end

	def self.all
		@@ALL
	end
end