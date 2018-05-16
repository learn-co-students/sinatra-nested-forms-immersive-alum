class Ship

	attr_accessor :name, :type, :booty

	@@ALL = []

	def initialize(name, type, booty)
		@name, @type, @booty = name, type, booty
		@@ALL << self
	end

	def self.all
		@@ALL
	end

	def self.clear
		@@ALL = []
	end
end