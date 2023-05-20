# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    def initialize(name1, say)
        @name1 = name1
        @color = "silver"
        @say = say
    end
    def say_unicorn
        "*#{@say}*"
    end

end



Unicorn1 = Unicorn.new("Sparkle", "Testing, does 'say' work?")
p Unicorn1
Unicorn1.say_unicorn  ##This method will print the string passed through in the Unicorn1 argument
p Unicorn1


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    def initialize(name1, pet = "bat")
        @name1 = name1
        @pet = pet
        @thirsty = true
    end
    def drink_method
        @thirsty = false
    end

end
Vampire1 = Vampire.new("Carl")
p Vampire1 #@name1="Carrl", @pet="bat", @thirsty=true>
Vampire1.drink_method 
p Vampire1 #Method changes thirsty default: to @name1="Carrl", @pet="bat", @thirsty=false>


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(d_name, rider, d_color, times_eat = 2, is_hungry = true)
        @d_name = d_name
        @rider = rider
        @d_color = d_color
        @times_eat = times_eat
        @is_hungry = is_hungry 
        
    end
    def eat_method
        if @times_eat >= 4
            @is_hungry = false
        end
    end
    
end

Dragon1 = Dragon.new("Red Hot", "Joseph", "Orange and Red")
p Dragon1 # Populates as follos: @d_name="Red Hot", @rider="Joseph", @d_color="Orange and Red", @times_eat=2, @is_hungry=true>

Dragon2 = Dragon.new("Billy", "George", "blue", times_eat = 8)
Dragon2.eat_method
p Dragon2 # times eaten was changed to 8. Method updates is_hungry to false due to being over 4"Billy", @rider="George", @d_color="blue", @times_eat=8, @is_hungry=false>

Dragon3 = Dragon.new("Trav", "Ron", "yellow", times_eat = 1)
Dragon3.eat_method
p Dragon3 #Verified that the update to times_eat updates is_hungry

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize(h_name, disposition, h_age, is_adult = false, is_old = false, has_ring = false)
        @h_name = h_name
        @disposition = disposition  
        @h_age = h_age
        @is_adult = is_adult
        @is_old = is_old
        @has_ring = has_ring
     
    end
    def celebrate_birthday
        @h_age = @h_age + 1
    end
    def adult
        if @h_age >= 101
            @is_old = true
            @is_adult = true
        elsif @h_age >= 33
            @is_adult = true
        end
    def ring_check
        if @h_name == "Frodo"
            @has_ring = true
        end
    end
    end
end 
Hobbit1 = Hobbit.new("Frodo", "determined", 32)
p Hobbit1 #h_name="Frodo", @disposition="determined", @h_age=32, @is_adult=false, @is_old=false, @has_ring=false>
Hobbit1.celebrate_birthday #Method adds 1 to the age to 33
p Hobbit1
Hobbit1.adult #Method takes into account the age and redetermines elements 'old' and 'adult'
p Hobbit1 #Age changed to 33 due to birthday, adult updated to true @h_name="Frodo", @disposition="determined", @h_age=33, @is_adult=true, @is_old=false, @has_ring=false>
Hobbit1.ring_check #Method checks to see if name is Frodo and changes has_ring to true
p Hobbit1 #"Frodo", @disposition="determined", @h_age=33, @is_adult=true, @is_old=false, @has_ring=true>

Hobbit2 = Hobbit.new("OldJack", "freindly", 108)
p Hobbit2 #@h_name="OldJack", @disposition="freindly", @h_age=108, @is_adult=false, @is_old=false, @has_ring=false>
Hobbit2.adult #Method called to update age booleans based on data
p Hobbit2 #Method updated both is_adult and is_old based on age - @h_name="OldJack", @disposition="freindly", @h_age=108, @is_adult=true, @is_old=true, @has_ring=false>