class Rover

  def initialize (x, y, dir)
    @x = x.to_i
    @y = y.to_i
    @dir = dir
  end


def read_instructions(cmd)
  # puts "L for Left, R for Right, M for move"

  cmd.each do |x|
    if x == "L" || x == "R"
      turn(x)
    else
      move
    end
  end
end


def turn(x)
  case x == "L"
    when @dir = "N" then @dir = "W"
    when @dir = "W" then @dir = "S"
    when @dir = "E" then @dir = "W"
    when @dir = "S" then @dir = "E"
  end

  case x == "R"
  when @dir = "N" then @dir = "E"
  when @dir = "W" then @dir = "N"
  when @dir = "E" then @dir = "S"
  when @dir = "S" then @dir = "E"
end

end

def move
  if @dir == "N"
      @x += 1
    elsif @dir == "S"
      @x -= 1
    elsif @dir == "E"
      @y += 1
    elsif @dir == "W"
      @y -= 1
  end
end

def new_location
    return "#{@x}, #{@y}, #{@dir}"
end


end #end for class

puts "initiate rover. ex. 1 2 N" #"1 2 N" (1, 2, "N")
pos1 = gets.chomp.split # gets.chomp => "1 2 N"  split => ["1", "2", "N"]

rover1 = Rover.new(*pos1) #* turn a = [1,2,3] to [1] [2] [3]

puts "Please give me instructions ex. LMLMLMLMM"
commands = gets.chomp.split

rover1.read_instructions(commands)
puts rover1.new_location
