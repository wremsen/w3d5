require_relative '../practice-for-ch-ruby-poly-tree-node-long-practice-main/lib/tree_node.rb'

class KnightPathFinder

    def valid_moves(pos)
        moves = []
        spaces = [0, 1, 2, 3, 4, 5, 6, 7]

        row = pos[0]
        col = pos[1]

            if spaces.include?(row + 2) && spaces.include?(col + 1)
                moves << [row + 2, col + 1]
            end
            if spaces.include?(row + 2) && spaces.include?(col - 1)
                moves << [row + 2, col - 1]
            end

            if spaces.include?(row - 2) && spaces.include?(col + 1)
                moves << [row - 2, col + 1]
            end
            if spaces.include?(row + 2) && spaces.include?(col - 1)
                moves << [row - 2, col - 1]
            end

            if spaces.include?(row - 2) && spaces.include?(col + 1)
                moves << [row + 1, col - 2]
            end
            if spaces.include?(row + 2) && spaces.include?(col - 1)
                moves << [row - 1, col - 2]
            end

            if spaces.include?(row - 2) && spaces.include?(col + 1)
                moves << [row + 1, col + 2]
            end
            if spaces.include?(row + 2) && spaces.include?(col - 1)
                moves << [row - 1, col + 2]
            end




            
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