require_relative "../problem/287"

describe "Problem 287" do
  it "returns -1 with empty input" do
    expect(find_duplicate([])).to eq(-1)
  end
  it "returns -1 with no duplicate" do
    expect(find_duplicate([1, 2, 3])).to eq(-1)
  end
  it "returns 2 with input [1, 2, 2, 3]" do
    expect(find_duplicate([1, 2, 2, 3])).to eq(2)
  end
  it "returns 5 with input [1, 2, 3, 4, 5, 6, 7, 5]" do
    expect(find_duplicate([1, 2, 3, 4, 5, 6, 7, 5])).to eq(5)
  end
end