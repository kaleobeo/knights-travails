class Coordinate
  attr_reader :x, :y, :position, :path

  def initialize(x, y, board)
    @x = x
    @y = y
    @position = [x, y]
    @board = board
    @path = [x, y]
    generate_neighbors
  end

  private

  def generate_neighbors
    @relative_neighbors = [1, -1].product([2, -2]) + [2, -2].product([1, -1])
    @neighbors = @relative_neighbors.map { |neighbor| [neighbor[0] + x, neighbor[1] + y] }
  end
end