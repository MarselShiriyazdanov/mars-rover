class Direction
  class South
    def self.suitable?(direction)
      direction == "S"
    end

    def left
      East.new
    end

    def right
      West.new
    end

    def move_from(x, y)
      [x, y - 1]
    end

    def to_s
      "S"
    end
  end
end
