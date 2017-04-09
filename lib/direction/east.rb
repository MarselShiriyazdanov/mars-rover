class Direction
  class East
    def self.suitable?(direction)
      direction == "E"
    end

    def left
      North.new
    end

    def right
      South.new
    end

    def move_from(x, y)
      [x + 1, y]
    end

    def to_s
      "E"
    end
  end
end
