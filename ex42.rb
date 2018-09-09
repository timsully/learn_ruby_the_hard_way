## Animal is-a object look at the extra credit
class Animal
end

## is-a
class Dog < Animal

    def initialize(name)
        ## has-a 
        @name = name
    end
end

## is-a 
class Cat < Animal

    def initialize(name)
        ## has-a
        @name = name
    end
end

## is-a
class Person

    def initialize(name)
        ## has-a 
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet ## dafuq dis?
end

## is-a
class Employee < Person

    def initialize(name, salary)
        ## ?? hmm what is this strange magic?
        super(name)
        ## has-a
        @salary = salary
    end

end

## is-a
class Fish
end

## is-a 
class Salmon < Fish
end

## is-a
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat 
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet named satan 
mary.pet = satan

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## frank has-a pet named rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is a Halibut
harry = Halibut.new()