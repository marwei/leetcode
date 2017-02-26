require_relative '../problem/463'

describe "Problem 463" do
  it "return correct result" do
    map = [[1]] 

    expect(island_perimeter(map)).to eq(4)
  end

  it "return correct result" do
    map = [[1, 1]] 

    expect(island_perimeter(map)).to eq(6)
  end

  it "return correct result" do
    map = [[1,1],
	   [1,1]] 

    expect(island_perimeter(map)).to eq(8)
  end
  
  it "return correct result" do
    map = [[0,1],
	   [1,1]] 

    expect(island_perimeter(map)).to eq(8)
  end

  it "return correct result" do
    map = [[0,1,0,0],
	   [1,1,1,0]] 

    expect(island_perimeter(map)).to eq(10)
  end

  it "return correct result" do
    map = [[0,1,0,0],
	   [1,1,1,0],
	   [0,1,0,0],
	   [1,1,0,0]] 

    expect(island_perimeter(map)).to eq(16)
  end
end
