class Direction
  class North
    def self.suitable?(direction)
      direction == "N"
    end

    def left
      West.new
    end

    def right
      East.new
    end

    def move_from(x, y)
      [x, y + 1]
    end

    def to_s
      "N"
    end
  end
end
