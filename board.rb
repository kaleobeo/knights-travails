require_relative 'coordinate'

# frozen_string literal: true

class Board
  attr_reader :board

  def initialize
    build_board
  end

  def at(coord_pair)
    return nil unless coord_pair.all? { |coord| (0..7).include?(coord) }

    x, y = coord_pair
    @board[y][x]
  end

  private

  def build_board
    @board = []
    8.times { @board.push([]) }
    (0..7).each do |y_val|
      (0..7).each do |x_val|
        @board[y_val].push(Coordinate.new(x_val, y_val, self))
      end
    end
  end
end
