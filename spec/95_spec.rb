require_relative '../problem/95.rb'
require_relative '../lib/tree/traverse_tree.rb'

describe "Problem 95" do
  it "returns nil if n = nil" do
    expect(generate_trees nil).to be_nil
  end
  it "returns nil if n = 0" do
    expect(generate_trees 0).to be_nil
  end
  it "returns 1 tree if n = 1" do
    trees = generate_trees 1
    expect(trees.count).to eq 1
  end
  it "returns 2 trees if n = 2" do
    trees = generate_trees 2
    expect(trees.count).to eq 2
  end
  it "returns 5 trees if n = 3" do
    trees = generate_trees 3
    expect(trees.count).to eq 5
  end
  it "returns 14 trees if n = 4" do
    trees = generate_trees 4
    expect(trees.count).to eq 14
  end
end