class Rover
  attr_reader :position, :direction, :plateau
  private :position, :direction, :plateau

  def initialize(position, direction, plateau)
    @position = position.map(&:to_i)
    @direction = direction
    @plateau = plateau
  end

  def turn_left
    @direction = direction.left
    self
  end

  def turn_right
    @direction = direction.right
    self
  end

  def move
    new_position = direction.move_from(*position)
    @position = new_position if plateau.accessible?(new_position)
    self
  end

  def location
    "#{position[0]} #{position[1]} #{direction}"
  end
end
