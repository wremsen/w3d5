require_relative '../practice-for-ch-ruby-poly-tree-node-long-practice-main/lib/tree_node.rb'

class KnightPathFinder

    def self.valid_moves(pos)

    end

    attr_reader :root_node

    def initialize(pos)
        @root_node = PolyTreeNode.new(pos)
        @considered_positions = [pos]


        build_move_tree 
    end

    def new_move_positions(pos)
        if KnightPathFinder.valid_moves(pos) == true && !@considered_positions.include?(pos)
            @considered_positions << pos
        end
    end


    def build_move_tree

    end

    









end