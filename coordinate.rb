# frozen_string_literal: true

class Coordinate
  attr_reader :x, :y, :position, :board
  attr_accessor :path

  def initialize(x, y, board)
    @x = x
    @y = y
    @position = [x, y]
    @board = board
    @path = [[x, y]]
  end

  def visited?
    path.length > 1
  end


  def neighbor_nodes
    # makes list of relative distances to a square a knight could move
    @relative_neighbors = [1, -1].product([2, -2]) + [2, -2].product([1, -1])

    # turns list of relative spaces into a list of the node's actual neighbors on the board
    @neighbors = @relative_neighbors.map { |neighbor| [neighbor[0] + x, neighbor[1] + y] }
    @neighbor_nodes = @neighbors.map { |coord| board.at(coord) }.compact
  end
end