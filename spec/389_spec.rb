require_relative '../problem/389'

describe "Problem 389" do
  it "return correct result" do
    a = "adsf"
    b = "fdsag"
    res = "g"

    expect(find_the_difference(a, b)).to eq(res)
  end
end
