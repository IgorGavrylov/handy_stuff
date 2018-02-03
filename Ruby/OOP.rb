class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
	@@people_count += 1    
  end
  
  def self.number_of_instances
    # Return your class variable on line 13
    @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"

############################################################
############################################################

class MyClass
  $my_variable = "Hello!"
  @@my_variable2 = "Hello!"

  def self.my_variable2
  	@@my_variable2
  end
end

puts $my_variable
puts MyClass.my_variable

############################################################
############################################################

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

############################################################
############################################################

class Application
  def initialize(name)
    @name = name
  end
end

class MyApp < Application
end

############################################################
############################################################

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon1 < Creature
	def fight
		return "Breathes fire!"
	end
end

class Dragon < Creature
	def fight
		puts "Instead of breathing fire..."
		super
	end
end

############################################################
############################################################

class Computer

	@@users = {}

	def initialize(username, password)
		@username = username
		@password = password
		@@users[username] = password
		@files = {}
	end

	def create(filename)
		@time = Time.now
		@filename = filename		
		@files[filename] = @time
		puts "New file was created: #{@filename} | #{@time}"
	end

	def Computer.get_users
		return @@users
	end

end

my_computer = Computer.new("usr","pswd")

############################################################
############################################################

class Dog
	def initialize(name, breed)
		@name = name
		@breed = breed
	end

	public

	def bark
		puts "Woof!"
	end

	private

	def id
		@id_number = 12345
	end

end

############################################################
############################################################

class Person
  def initialize(name, job)
    @name = name
    @job = job
  end
  
  attr_reader :name  
#  def name
#    @name
#  end
  
  attr_writer :job  
#  def job=(new_job)
#    @job = new_job
#  end

#  (attr_reader :job) + (attr_writer :job) == (attr_accessor :job)

end

############################################################
############################################################

module MyLibrary
	FAVE_BOOK = "American gods"
end

puts Math::PI