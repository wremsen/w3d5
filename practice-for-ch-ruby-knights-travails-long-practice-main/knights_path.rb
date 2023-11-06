require_relative '../practice-for-ch-ruby-poly-tree-node-long-practice-main/lib/tree_node.rb'

class KnightPathFinder

    def valid_moves(pos)
        moves = []
        spaces = [0, 1, 2, 3, 4, 5, 6, 7]

        row = pos[0]
        col = pos[1]
    end

    attr_reader :root_node

    def initialize(pos)
        @root_node = PolyTreeNode.new(pos)
        @considered_positions = [pos]


        build_move_tree 
    end

    def new_move_positions(pos)
        moves = KnightPathFinder.valid_moves(pos)
        moves.reject { |ele| @considered_positions.include?(ele) }
    end


    def build_move_tree

    end

    









end