class Greeter
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