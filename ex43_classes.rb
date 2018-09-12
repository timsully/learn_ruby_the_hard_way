class Map 

    def initialize( start_scene)
    end

    def next_scene( scene_name)
    end

    def opening_scene()
    end
end


a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()