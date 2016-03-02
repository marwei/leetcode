require_relative '../problem/233'

describe "Problem 233" do
  it "returns 0 with 0" do
    expect(count_digit_one(0)).to eq(0)
  end
  it "returns 1 with 1" do
    expect(count_digit_one(1)).to eq(1)
  end
  it "returns 2 with 10" do
    expect(count_digit_one(10)).to eq(2)
  end
  it "returns 6 with 13" do
    expect(count_digit_one(13)).to eq(6)
  end
end