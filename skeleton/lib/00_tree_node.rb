require 'byebug'

module Searchable

  def dfs(target_value)
    #base return
    


  end
end



class PolyTreeNode

  include Searchable

  attr_reader :parent, :children, :value


  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(new_parent)
    
    if @parent != nil
      @parent.children.delete(self)
    # elsif @parent != nil and new_parent == nil  
    #   @parent = new_parent
    end
    @parent = new_parent

    if @parent != nil && !parent.children.include?(self)
        parent.children << self
    end
    
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    raise 'not a child of this node' if !self.children.include?(child_node)
    child_node.parent = nil
  end

# d = Node.new('d')
#b = Node.new('b', [d]) 
end

