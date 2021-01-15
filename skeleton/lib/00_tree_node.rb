class PolyTreeNode

  attr_reader :parent, :children, :value


  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end


# d = Node.new('d')
#b = Node.new('b', [d]) 
end