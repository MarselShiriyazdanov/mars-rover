class Direction
  class West
    def self.suitable?(direction)
      direction == "W"
    end

    def left
      South.new
    end

    def right
      North.new
    end

    def move_from(x, y)
      [x - 1, y]
    end

    def to_s
      "W"
    end
  end
end
