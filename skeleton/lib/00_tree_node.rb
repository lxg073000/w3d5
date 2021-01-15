require 'byebug'

class PolyTreeNode

  attr_reader :parent, :children, :value


  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(new_parent)
    debugger
    if @parent != nil
      @parent.children.delete(self)
    # elsif @parent != nil and new_parent == nil  
    #   @parent = new_parent
    end
    @parent = new_parent
    if !parent.children.include?(self) 
        parent.children << self
    end
    debugger
  end




# d = Node.new('d')
#b = Node.new('b', [d]) 
end