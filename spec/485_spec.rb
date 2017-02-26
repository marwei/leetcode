require_relative '../problem/485'

describe "Problem 485" do
  it "return correct result" do
    arr = [1, 1, 0, 0, 1, 1, 1, 0]
    res = 3

    expect(find_max_consecutive_ones(arr)).to eq(res)
  end

  it "return correct result" do
    arr = [1, 1, 1, 1, 0, 1, 1, 0]
    res = 4

    expect(find_max_consecutive_ones(arr)).to eq(res)
  end
  
  it "return correct result" do
    arr = [1, 1, 1, 1, 1, 1, 1, 0]
    res = 7

    expect(find_max_consecutive_ones(arr)).to eq(res)
  end
end
