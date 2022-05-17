# frozen_string_literal: true

require_relative 'coordinate'

# Holds info about a board, and has methods to find nodes in the board given a set of coordinates
class Board
  attr_reader :board
  attr_accessor :board_size

  def initialize(board_size = 8)
    self.board_size = board_size
    build_board
  end

  def at(coord_pair)
    return nil unless coord_pair.all? { |coord| (0..(board_size - 1)).include?(coord) }

    x, y = coord_pair
    @board[y][x]
  end

  private

  def build_board
    @board = []
    board_size.times { @board.push([]) }
    (0..(board_size - 1)).each do |y_val|
      (0..(board_size - 1)).each do |x_val|
        @board[y_val].push(Coordinate.new(x_val, y_val, self))
      end
    end
  end
end
