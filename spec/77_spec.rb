require_relative "../problem/77.rb"

describe "Problem " do
  it "returns [] with n = 0" do
    expect(combine(0, 0)).to eq([])
    expect(combine(0, 10)).to eq([])
  end
  it "returns [] with k = 0" do
    expect(combine(0, 0)).to eq([])
    expect(combine(10, 0)).to eq([])
  end
  it "returns [[1]] with n = 1, k = 1" do
    expect(combine(1, 1)).to eq([[1]])
  end
  it "returns [[1], [2], [3]] with n = 3, k = 1" do
    expect(combine(3, 1)).to eq([[1], [2], [3]])
  end
  it "returns [[]] with n = 1, k = 2" do
    expect(combine(1, 2)).to eq([])
  end
  it "returns [[1, 2]] with n = 2, k = 2" do
    expect(combine(2, 2)).to eq([[1, 2]])
  end
  it "returns [[1, 2], [1, 3], [2, 3]] with n = 3, k = 2" do
    expect(combine(3, 2)).to eq([[1, 2], [1, 3], [2, 3]])
  end
end