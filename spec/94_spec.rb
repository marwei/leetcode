require_relative '../problem/94.rb'
require_relative '../lib/tree.rb'

describe "Problem 94" do
  it 'should return [] if argument is nil' do
    expect(inorder_traversal nil).to eq([])
  end
  it 'should return [0] if argument is Tree(0)' do
    expect(inorder_traversal TreeNode.new(0)).to eq([0])
  end
  it 'should return correct traversal' do
    tree = Tree.build_tree_from_array [1, 2, 3, 4, 5, 6, 7, 8, nil, 9, 10, nil, nil, 12, 11]
    expect(inorder_traversal tree).to eq(Tree.inorder_traversal tree)
  end
end