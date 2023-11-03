class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        if self.parent == nil
            @parent = node
            @parent.children << self
        else
            self.parent.children.delete(self)
            @parent = node
            if node != nil
                node.children << self
            end
        end
    end

    def add_child
        # parent=(self)
    end


  
end