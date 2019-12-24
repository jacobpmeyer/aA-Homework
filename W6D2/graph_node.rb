require "byebug"

class GraphNode

  attr_accessor :neighbors
  attr_reader :value

  def initialize(value)
    @value = value
    @neighbors = []
  end

  def inspect
    "Graph value: #{self.value}"
  end

end


# Examples 
# a = GraphNode.new('a')
# b = GraphNode.new('b')
# c = GraphNode.new('c')
# d = GraphNode.new('d')
# e = GraphNode.new('e')
# f = GraphNode.new('f')
# a.neighbors = [b, c, e]
# c.neighbors = [b, d]
# e.neighbors = [a]
# f.neighbors = [e]

def bfs(starting_node, target_value)
  queue = [starting_node]
  visited = Set.new()
  until queue.empty?
    node = queue.shift
    if node.value == target_value
      return node.value
    else
      queue += node.neighbors unless visited.include?(node)
      visited.add(node)
    end
  end
  nil
end