require_relative '../problem/110.rb'
require_relative '../lib/tree.rb'

describe "Problem 110" do
  it 'should return true if argument is nil' do
    expect(is_balanced nil).to be true
  end
  it 'should return true if argument is Tree(0)' do
    expect(is_balanced TreeNode.new(0)).to be true
  end
  it 'should return true if tree is not height-balanced' do
    tree = Tree.build_tree_from_array [1, 2, 3, 4, 5, nil, 7, 8, nil, 9, 10, nil, nil, 12, 11]
    expect(is_balanced tree).to be false
  end
  it 'should return true if tree is height-balanced' do
    tree = Tree.build_tree_from_array [1, 2, 3, 4, 5, 6, 7, 8, nil, 9, 10, nil, nil, 12, 11]
    expect(is_balanced tree).to be true
  end
end