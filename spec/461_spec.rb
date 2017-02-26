require_relative '../problem/461'

describe "Problem 461" do
  it "returns 2 with input 1, 4" do
    expect(hamming_distance(1, 4)).to eq(2)
  end
  it "returns 3 with input 1, 15" do
    expect(hamming_distance(1, 15)).to eq(3)
  end

  it "returns 2 with input 3, 15" do
    expect(hamming_distance(3, 15)).to eq(2)
  end
end

