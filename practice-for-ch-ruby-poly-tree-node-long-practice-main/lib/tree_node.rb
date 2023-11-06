class PolyTreeNode


    attr_reader :value, :parent, :children

    # comment for git check

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

    def add_child(child)
        child.parent=(self)
    end

    def remove_child(child)
        child.parent=(nil)
    end

    def dfs(target)
        return self if self.value == target
        self.children.each do |child|
            result = child.dfs(target)
            if result != nil
                return result
            end
        end
        nil
    end

    def bfs(target)
        # return self if self.value == target
        my_queue = [self]

        until my_queue.empty?
            node = my_queue.shift
            # node.bfs(target)
            # node.children.each do |child|
            #     my_queue << child
            # end
            # node = my_queue.shift
            if node.value == target
                return node
            else
                node.children.each do |child|
                    my_queue << child
                end
            end
        end
        nil
    end



  
end

