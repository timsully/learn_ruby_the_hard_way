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
dad = Parent.new()
# An instance of the Child class is assigned to the variable son
son = Child.new()

# Calling the Parent.implicit function which results in displaying
# PARENT implicit()
dad.implicit()
# Calling the Child.implicit(), BUT there is no implicit() function
# under the Child class, ruby then goes and looks for it in the Parent
# class since Child is one level under it in the hierarchy and ruby
# find the implicit() function in the Parent class and displays the
# output of PARENT implicit()
son.implicit()

# Calling override on the dad variable which is an instance of the
# Parent class where it find and run the function override() which
# will display PARENT override()
dad.override()
# Calling override function from the new Child class instance created
# that is stored in the variable 'son' which will display CHILD override()
son.override()

# Calls the altered function from the Parent class resulting in the
# output being: PARENT altered()
dad.altered()
# Calling the altered function stored in the Child class on the
# variable instance son which will display the following:
# CHILD, BEFORE PARENT altered() > then calls the Parent classes
# altered() functions to get its output which is PARENT altered() >
# then runs the last puts statement which is: CHILD, AFTER PARENT altered()
son.altered()