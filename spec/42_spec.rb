require_relative "../problem/42"

describe "Problem 42" do
  it "returns 0 with input []" do
    expect(trap([])).to eq(0)
  end
  it "returns 0 with input 1000" do
    expect(trap([1000])).to eq(0)
  end
  it "returns 0 with input 0, 1, 2, 3" do
    expect(trap([0, 1, 2, 3])).to eq(0)
  end
  it "returns 0 with input 3, 2, 1, 0" do
    expect(trap([3, 2, 1, 0])).to eq(0)
  end
  it "returns 0 with input 2, 3, 1, 0" do
    expect(trap([2, 3, 1, 0])).to eq(0)
  end
  it "returns 1 with input 2, 1, 3, 2" do
    expect(trap([2, 1, 3, 2])).to eq(1)
  end
  it "returns 6 with input 0,1,0,2,1,0,1,3,2,1,2,1" do
    expect(trap([0,1,0,2,1,0,1,3,2,1,2,1])).to eq(6)
  end
end