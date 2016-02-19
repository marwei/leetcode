require_relative "../problem/flight1.rb"

describe "Problem " do
  it "returns [] with n = 0" do
    expect(combination(0, 0)).to eq([])
    expect(combination(0, 10)).to eq([])
  end
  it "returns [] with k = 0" do
    expect(combination(0, 0)).to eq([])
    expect(combination(10, 0)).to eq([])
  end
  it "returns [[0]] with n = 0, k = 1" do
    expect(combination(0, 1)).to eq([[0]])
  end
  it "returns [[0,] [1], [2], [3]] with n = 3, k = 1" do
    expect(combination(3, 1)).to eq([[0], [1], [2], [3]])
  end
  it "returns [[0, 1]] with n = 1, k = 2" do
    expect(combination(1, 2)).to eq([[0, 1]])
  end
  it "returns [[0, 1], [0, 2], [1, 2]] with n = 2, k = 2" do
    expect(combination(2, 2)).to eq([[0, 1], [0, 2], [1, 2]])
  end
  it "returns [[0, 1], [0, 2], [0, 3], [1, 2], [1, 3], [2, 3]] with n = 3, k = 2" do
    expect(combination(3, 2)).to eq([[0, 1], [0, 2], [0, 3], [1, 2], [1, 3], [2, 3]])
  end
end