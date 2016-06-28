class Person

  attr_accessor :name, :hair_color

  @@everyone = []



  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def save
    @@everyone << self
  end

  def self.riot
    puts "The people are rising up!"
    @@everyone.each {|person|
      puts "#{person.name} is rioting!"
    }

  end

  def sing
    puts "#{@name} is singing "
  end

end

sandy = Person.new("sandy", "blonde")
joe = Person.new("joe","brown")
tim = Person.new("tim", "red")
sandy.save
joe.save
tim.save
Person.riot
