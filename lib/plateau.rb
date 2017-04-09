class Plateau
  def initialize(params)
    @width = params[0]
    @height = params[1]
  end

  def accessible?(coordinates)
    coordinates[0] <= @width && coordinates[1] <= @height
  end
end
