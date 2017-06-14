class User
	attr_accessor :name, :email  #this creates getter and setter methods

	def initialize(attributes = {}) #initialize method executes when do User.new
		@name = attributes[:name]
		@email = attributes[:email]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end
end