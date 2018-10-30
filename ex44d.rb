# Creating a class named Parent
class Parent

    # Defining a function named override
    def override()
        # Displays PARENT override() in terminal when Parent.override is called
        puts "PARENT override()"
    # End of function
    end

    # A function named implicit
    def implicit()
        # Displays PARENT implicit in terminal when you call Parent.implicit()
        puts "PARENT implicit()"
    # End of function
    end

    # Function named altered()
    def altered()
        # Displays PARENT altered() in terminal when you call Parent.altered()
        puts "PARENT altered()"
    # End of function
    end
# End of Parent class
end

class Child < Parent

    def override()
        puts "CHILD override()"
    end

    def altered()
        # Displays string below when you call Child.altered()
        puts "CHILD, BEFORE PARENT altered()"
        # The super() function calls the Parent.altered() function which
        # would result in displaying the string: PARENT altered()
        super()
        # Child.altered continues to print out the after message
        puts "CHILD, AFTER PARENT altered()"
    # End of altered function
    end
# End of Child class which inherits from Parent class?
end

# A new instance of the Parent class is assigned to the variable dad
# 
dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()