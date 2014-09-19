class IllegalMoveError < StandardError
end

class Toh
  attr_accessor :grid

  def initialize
    @grid = Array.new(3) { Array.new }
    grid[0] = [3,2,1]
  end

  def move(one, two)

    raise IllegalMoveError if grid[one].empty?

    if !(grid[two].empty?)
      raise IllegalMoveError if (grid[two].last < grid[one].last)
    end

    grid[two].push(grid[one].pop)
  end

  def won?
    grid[2] == [3, 2, 1]
  end

end