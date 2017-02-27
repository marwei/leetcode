require_relative '../problem/448'

describe "Problem 448" do
  it "return correct result" do
    arr = [4, 3, 2, 7, 8, 2, 3, 1] 
    res = [5, 6]

    expect(find_disappeared_numbers(arr)).to eq(res)
  end
end
