require_relative '../practice-for-ch-ruby-poly-tree-node-long-practice-main/lib/tree_node.rb'

class KnightPathFinder

    MOVES = [
        [2,1], [2,-1], 
        [-2,1], [-2,-1], 
        [1,2], [-1,2], 
        [1,-2],[-1,-2]
    ]

    def self.valid_moves(pos)
        v_moves = []

        row = pos[0]
        col = pos[1]
        MOVES.each do |ele|
            new_row = row + ele[0]
            new_col = col + ele[1]
            if (new_row >= 0 && new_row < 8) && (new_col >= 0 && new_col < 8)
                v_moves << [new_row, new_col]
            end
        end
        v_moves
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

        moves.each do |ele|
            @considered_positions << ele
        end

        return moves
    end


    def build_move_tree

    end

    









end