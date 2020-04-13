# Create a person class with at least 2 attributes and 2 behaviors.
# Call all person methods below the class and print results
# to the terminal that show the methods in action.

class Person
  attr_reader :name, :age, :mood

  def initialize(name, age, mood = "content")
    @name = name
    @age  = age
    @mood = mood
  end

  def have_birthday
    puts "Happy birthday, #{name}!"
    @age += 1
  end

  def dance
    @mood = "ecstatic!"
  end

end

naftali = Person.new("Naftali", 34)
p naftali.mood
naftali.have_birthday
p naftali.age
naftali.dance
p naftali.mood
