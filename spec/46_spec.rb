require_relative '../problem/46'

describe "Problem 46" do
  it "returns [] with input []" do
    expect(permute([])).to eq([])
  end
  it "returns [[1]] with input [1]" do
    expect(permute([1])).to eq([[1]])
  end
  it "returns [[1, 2], [2, 1]] with input [1, 2]" do
    expect(permute([1, 2])).to eq([[1, 2], [2, 1]])
  end
  it "returns [[1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], [3,2,1]] with input [1, 2, 3]" do
    expect(permute([1, 2, 3])).to eq([[1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], [3,2,1]])
  end
end

