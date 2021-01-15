class PolyTreeNode

  attr_reader :parent, :children, :value


  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(parent)
    if self.parent != nil
      parent.children.delete!(self)
    end
      @parent = parent

    if !parent.children.include?(self)
      parent.children << self
    end

  end




# d = Node.new('d')
#b = Node.new('b', [d]) 
end