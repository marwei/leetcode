require_relative "../problem/1"

describe "Problem 1" do
  it "returns [] with [1], 0" do
    expect(two_sum([1], 0)).to eq([])
  end
  it "returns [] with [1, 0], 0" do
    expect(two_sum([1, 0], 0)).to eq([])
  end
  it "returns [] with [1, 3, 5], 7" do
    expect(two_sum([1, 3, 5], 7)).to eq([])
  end
  it "returns [0, 2] with [1, 4, 7, 9], 8" do
    expect(two_sum([1, 4, 7, 9], 8)).to eq([0, 2])
  end
  it "returns [0, 2] with [7, 4, 1, 9], 8" do
    expect(two_sum([1, 4, 7, 9], 8)).to eq([0, 2])
  end
end
