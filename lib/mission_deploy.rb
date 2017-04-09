require "./lib/rover"
require "./lib/direction"
require "./lib/plateau"

class MissionDeploy
  attr_reader :plateau, :positions, :commands, :result

  def self.deploy(filename)
    new(File.open(filename))
  end

  def initialize(mission_info)
    @mission_info = mission_info
    @positions = []
    @commands = []
    @result = []
    parse_mission_info
  end

  def parse_mission_info
    @mission_info.each do |line|
      line = line.chomp
      @plateau = Plateau.new(line.split.map(&:to_i)) if only_digits?(line)
      @positions << line if letters_and_digits?(line)
      @commands << line if only_letters?(line)
    end
  end

  def start
    positions.each_with_index do |position, rover_index|
      rover = Rover.new(position.split[0, 2], Direction.parse(position[-1]), @plateau)
      commands[rover_index].each_char { |command| proceed(command, rover) }
      result << rover.location
      p rover.location
    end
    result
  end

  private

  def proceed(command, rover)
    rover_command = { "R" => :turn_right, "L" => :turn_left, "M" => :move }[command]
    rover.public_send(rover_command)
  end

  def only_letters?(str)
    str[/[a-zA-Z]+/] == str
  end

  def only_digits?(str)
    str.delete(" ").scan(/\D/).empty?
  end

  def letters_and_digits?(str)
    !only_letters?(str) && !only_digits?(str)
  end
end
