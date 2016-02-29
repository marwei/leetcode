require_relative '../problem/239'

describe "Problem 239" do
  it "returns [] with array of fewer than k elements" do
    expect(max_sliding_window([1, 2], 3)).to eq([])
  end
  it "returns [1] with [1], 1" do
    expect(max_sliding_window([1], 1)).to eq([1])
  end
  it "returns [1, -1] with [1, -1], 1" do
    expect(max_sliding_window([1, -1], 1)).to eq([1, -1])
  end
  it "returns [3] with [1, 2, 3], 3" do
    expect(max_sliding_window([1, 2, 3], 3)).to eq([3])
  end
  it "returns [3, 3] with [1, 2, 3, 2], 3" do
    expect(max_sliding_window([1, 2, 3, 2], 3)).to eq([3, 3])
  end
  it "returns [3, 2, 1] with [3, 2, 1, 1, 1], 3" do
    expect(max_sliding_window([3, 2, 1, 1, 1], 3)).to eq([3, 2, 1])
  end
  it "returns [3,3,5,5,6,7] with [1,3,-1,-3,5,3,6,7], 3" do
    expect(max_sliding_window([1,3,-1,-3,5,3,6,7], 3)).to eq([3,3,5,5,6,7])
  end
  it "returns [10,10,9,2] with [9,10,9,-7,-4,-8,2,-6], 5" do
    expect(max_sliding_window([9,10,9,-7,-4,-8,2,-6], 5)).to eq([10,10,9,2])
  end
end

