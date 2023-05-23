# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end
    def say_unicorn(greeting)
       puts "*#{greeting}*"
    end

end


puts "Unicorn Testing Class"
unicorn1 = Unicorn.new("Sparkle")
p unicorn1
puts unicorn1.name
puts unicorn1.color
unicorn1.say_unicorn("Testing, hello!")  ##This method will print the string passed through in the Unicorn1 argument
puts unicorn1



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    attr_reader :name1, :pet, :thirsty
    def initialize(name1, pet = "bat")
        @name1 = name1
        @pet = pet
        @thirsty = true
    end
    def drink_method
        @thirsty = false
    end

end
puts "Vampire Test Class"
vampire1 = Vampire.new("Carl")
p vampire1 #@name1="Carrl", @pet="bat", @thirsty=true>
vampire1.drink_method 
p vampire1 #Method changes thirsty default: to @name1="Carrl", @pet="bat", @thirsty=false>


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :d_name, :rider, :d_color, :times_eat, :is_hungry
    def initialize(d_name, rider, d_color)
        @d_name = d_name
        @rider = rider
        @d_color = d_color
        @times_eat = 0
        @is_hungry = true
        
    end
    def eat_method
        @times_eat += 1
        @is_hungry = false if @times_eat >= 4
    end
    
    
end

puts "Dragon Class Tests"
dragon1 = Dragon.new("Red Hot", "Joseph", "Orange and Red")
puts dragon1.d_name
puts dragon1.rider
puts dragon1.d_color
p dragon1 # Populates as follos: @d_name="Red Hot", @rider="Joseph", @d_color="Orange and Red", @times_eat=2, @is_hungry=true>
dragon1.eat_method
puts dragon1.is_hungry
dragon1.eat_method
dragon1.eat_method
dragon1.eat_method
dragon1.eat_method
puts dragon1.is_hungry
p dragon1

dragon2 = Dragon.new("Billy", "George", "blue")
dragon2.eat_method
dragon2.eat_method
puts dragon2.is_hungry # times eaten was changed to 8. Method updates is_hungry to false due to being over 4"Billy", @rider="George", @d_color="blue", @times_eat=8, @is_hungry=false>

dragon3 = Dragon.new("Trav", "Ron", "yellow")
dragon3.eat_method
p dragon3 #Verified that the update to times_eat updates is_hungry

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :h_name, :disposition, :h_age
    def initialize(h_name, disposition, h_age = 0)
        @h_name = h_name
        @disposition = disposition  
        @h_age = h_age
        # @is_adult = is_adult
        # @is_old = is_old
        # @has_ring = has_ring
     def is_adult
        @h_age >= 33
     end
     def is_old
        @h_age >= 101
     end
     def celebrate_birthday
        @h_age += 1
     end
     def has_ring
        @h_name == "Frodo"
     end
    end

end 
puts "Hobbit Class Tests"
hobbit1 = Hobbit.new("Frodo", "determined")
puts hobbit1.h_name
puts hobbit1.disposition
puts hobbit1.h_age
puts hobbit1.is_adult
puts hobbit1.is_old
puts hobbit1.has_ring

34.times { hobbit1.celebrate_birthday}
puts hobbit1.h_age
puts hobbit1.is_adult
puts hobbit1.is_old

101.times {hobbit1.celebrate_birthday}
puts hobbit1.h_age
puts hobbit1.is_adult
puts hobbit1.is_old

p hobbit1 #h_name="Frodo", @disposition="determined", @h_age=32, @is_adult=false, @is_old=false, @has_ring=false>
hobbit1.celebrate_birthday #Method adds 1 to the age to 33
p hobbit1
hobbit1.is_adult #Method takes into account the age and redetermines elements 'old' and 'adult'
p hobbit1 #Age changed to 33 due to birthday, adult updated to true @h_name="Frodo", @disposition="determined", @h_age=33, @is_adult=true, @is_old=false, @has_ring=false>
hobbit1.has_ring #Method checks to see if name is Frodo and changes has_ring to true
p hobbit1 #"Frodo", @disposition="determined", @h_age=33, @is_adult=true, @is_old=false, @has_ring=true>

hobbit2 = Hobbit.new("OldJack", "freindly", 108)
p hobbit2 #@h_name="OldJack", @disposition="freindly", @h_age=108, @is_adult=false, @is_old=false, @has_ring=false>
hobbit2.is_adult #Method called to update age booleans based on data
p hobbit2 #Method updated both is_adult and is_old based on age - @h_name="OldJack", @disposition="freindly", @h_age=108, @is_adult=true, @is_old=true, @has_ring=false>