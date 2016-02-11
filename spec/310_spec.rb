require_relative "../problem/310.rb"

describe "Problem 310" do
  it "returns [] if n = 0, edges = []" do
    expect(find_min_height_trees 0, []).to eq []
  end
  it "returns [0] if n = 1, edges = []" do
    expect(find_min_height_trees 1, []).to eq [0]
  end
  it "returns [0, 1] if n = 2, edges = [[0, 1]]" do
    expect(find_min_height_trees 2, [[0,1]]).to eq [0, 1]
  end
  it "returns [1] if n = 4, edges = [[1, 0], [1, 2], [1, 3]]" do
    expect(find_min_height_trees 4, [[1, 0], [1, 2], [1, 3]]).to eq [1]
  end
  it "returns [3, 4] if n = 6, edges = [[0, 3], [1, 3], [2, 3], [4, 3], [5, 4]]" do
    expect(find_min_height_trees 6, [[0, 3], [1, 3], [2, 3], [4, 3], [5, 4]]).to eq [3, 4]
  end
  it "returns [4] if n = 7, edges = [[0, 3], [1, 3], [2, 3], [4, 3], [5, 4], [6, 5]]" do
    expect(find_min_height_trees 6, [[0, 3], [1, 3], [2, 3], [4, 3], [5, 4], [6, 5]]).to eq [4]
  end
end