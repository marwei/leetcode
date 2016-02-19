require_relative "../problem/4"

describe "Problem 4" do
  it "returns 1 with [1], []" do
    expect(find_median_sorted_arrays([1], [])).to eq(1)
  end
  it "returns 1.5 with [1], [2]" do
    expect(find_median_sorted_arrays([1], [2])).to eq(1.5)
  end
  it "returns 2 with [1], [2, 3]" do
    expect(find_median_sorted_arrays([1], [2, 3])).to eq(2)
  end
  it "returns 5 with [1, 4, 7, 9], [2, 5, 8]" do
    expect(find_median_sorted_arrays([1, 4, 7, 9], [2, 5, 8])).to eq(5)
  end
  it "returns 3.5 with [1, 2, 100], [3, 4, 5]" do
    expect(find_median_sorted_arrays([1, 2, 100], [3, 4, 5])).to eq(3.5)
  end
  it "returns 5 with [1, 2, 3, 4, 97, 98, 99 100], [5]" do
    expect(find_median_sorted_arrays([1, 2, 3, 4, 97, 98, 99, 100], [5])).to eq(5)
  end
end