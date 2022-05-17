# frozen_string_literal: true

# Class that manages calculation of the path between nodes
class Knight
  attr_accessor :board

  def initialize(board)
    self.board = board
  end

  def knight_moves(start, finish, queue = [])
    # converts start and finish to Square objects if they are arrays
    start = board.at(start) if start.is_a?(Array)
    finish = board.at(finish) if finish.is_a?(Array)

    return finish.path if start == finish

    enqueue_neighbors(start, queue)
    knight_moves(queue.shift, finish, queue)
  end

  def self.display_path(path)
    puts "You made it in #{path.length} moves! Here's your path:"
    path.each { |move| p move }
  end

  def enqueue_neighbors(root, queue)
    # Iterates over nodes that have not been visited, and adds the path to get to the ones that haven't
    discovered_nodes = root.neighbor_nodes.filter { |node| !node.visited? }
    discovered_nodes.each do |node|
      node.path = root.path + node.path
      queue.push(node)
    end
  end
end
