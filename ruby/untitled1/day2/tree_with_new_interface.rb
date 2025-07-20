# The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface.
# Let the initializer accept a nested structure with hashes and arrays.
# You should be able to specify a tree like this:
# {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }.

class Tree
  attr_accessor :children, :node_name
  def initialize(name, children=[])
    @children = children
    @node_name = name
  end
  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  def visit(&block)
    block.call self
  end
end

class Tree
  def initialize(name_or_hash, children = [])
    if name_or_hash.is_a?(Hash)
      tree = build_from_hash name_or_hash
      @node_name = tree.node_name
      @children = tree.children
    else
      @node_name = name_or_hash
      @children = children
    end
  end

  def build_from_hash( hash = {})
    node_name = hash.keys.first
    children_hash = hash.values.first
    children = children_hash.map do |child_name, grand_children_hash|
      build_from_hash({ child_name => grand_children_hash })
    end
    Tree.new(node_name,children)
  end
end

p Tree.new({'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }) 