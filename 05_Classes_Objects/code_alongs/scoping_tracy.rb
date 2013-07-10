class Greeter
<<<<<<< HEAD
  @@global_greeting = "Global Default Hola"
  

  def initialize(greeting=nil)
    @greeting = greeting || @@global_greeting
  end

  def greet(name)
    "#{@greeting} #{name}"
  end


end

greeter = Greeter.new()

puts greeter.greet("Ben")

greeter2=Greeter.new("Hola")

puts greeter2.greet("Ben")


puts greeter.greet("Tracy")

puts greeter2.greet("X")

puts greeter2.greet("Croc")
=======
  GlobalGreeting = "Howdy"

  def self.global_greeting
    GlobalGreeting
  end


  def initialize(greeting=nil)
    @greeting = greeting || GlobalGreeting
  end
  
  
  def greet(name)
    "#{@greeting} #{name}"
  end
end

greeter = Greeter.new

# puts greeter.greet("Ben")
# puts greeter.greet("Tanya")
# puts greeter.greet("Kerem")

puts Greeter.global_greeting
# puts Greeter.greet
greeter.global_greeting
>>>>>>> teacher/master
