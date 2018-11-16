require "ex47/game.rb"
require "test/unit"

class TestEx47 < Test::Unit::TestCase

    def test_room()
        gold = Room.new("Gold Room", """This room has gold in it you can grad. There's a door to the north.""")
        assert_equal(gold.name, "Gold Room")
        assert_equal(gold.paths, {})
    end
    
end