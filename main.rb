# frozen_string_literal: true

require_relative 'board'
require_relative 'coordinate'
require_relative 'knight'

path = Knight.new(Board.new).knight_moves([0, 0], [7, 7])
Knight.display_path(path)
