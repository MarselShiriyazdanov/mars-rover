Dir["./lib/direction/*.rb"].each { |file| require file }

class Direction
  DIRECTIONS = [North, East, West, South].freeze

  def self.parse(direction)
    DIRECTIONS.find { |direction_class| direction_class.suitable?(direction) }.new
  end
end
