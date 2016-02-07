require_relative '../problem/96.rb'

describe "Problem 96" do
  it "returns 1 if n = 0" do
    expect(num_trees 0).to eq 1
  end
  it "returns 1 if n = 1" do
    expect(num_trees 1).to eq 1
  end
  it "returns 2 if n = 2" do
    expect(num_trees 2).to eq 2
  end
  it "returns 5 if n = 3" do
    expect(num_trees 3).to eq 5
  end
  it "returns 14 if n = 4" do
    expect(num_trees 4).to eq 14
  end
end