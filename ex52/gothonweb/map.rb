module Map

class Room 

    def initialize(name, description)
        @name = name
        @description = description
        @paths = {}
    end

    # these make it easy for you to access the variables
    attr_reader :name
    attr_reader :description
    attr_reader :paths

    def go(direction)
        return @paths[direction]
    end

    def add_paths(paths)
        @paths.update(paths)
    end

    CENTRAL_CORRIDOR = Room.new("Central Corridor",
        """The Gothons of Planet Percal #25 have invaded your ship and destroyed
        your entire crew.  You are the last surviving member and your last
        mission is to get the neutron destruct bomb from the Weapons Armory,
        put it in the bridge, and blow the ship up after getting into an escape pod.
        \n
        You're running down the central corridor to the Weapons Armory when a Gothon 
        jumps out, red scaly skin, dark grimy teeth, and evil clown costume flowing 
        around his hate filled body. He's blocking the door to the Armory and about 
        to pull a weapon to blast you.
        """)

    LASER_WEAPON_ARMORY = Room.new("""
        Lucky for you they made you learn Gothon insults in the academy. You tell 
        the one Gothon joke you know: Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur
        ubhfr, fur fvgf nebhaq gur ubhfr. The Gothon stops, tries not to laugh, then 
        busts out laughing and can't move. While he's laughing you run up and shoot 
        him square in the head putting him down, then jump through the Weapon Armory 
        door.
        \n
        You do a dive roll into the Weapon Armory, crouch and scan the room for more 
        Gothons that might be hiding. It's dead quiet, too quiet. You stand up and run 
        to the far side of the room and find the neutron bomb in its container. 
        There's a keypad lock on the box and you need the code to get the bomb out.  
        If you get the code wrong 10 times then the lock closes forever and you can't
        get the bomb.  The code is 3 digits.
        """)        

end