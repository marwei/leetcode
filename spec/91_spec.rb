require_relative "../problem/91"

describe "Problem 91" do
  it "returns 0 with empty input" do 
    expect(num_decodings('')).to eq(0)
  end
  it "returns 0 with input 0" do 
    expect(num_decodings('0')).to eq(0)
  end
  it "returns 1 with input 1..10 and 20" do
    (1..10).each do |num|
      expect(num_decodings(num.to_s)).to eq(1)
    end
    expect(num_decodings('20')).to eq(1)
  end
  it "returns 2 with input 11..26" do
    (11..26).each do |num|
      next if num == 20
      expect(num_decodings(num.to_s)).to eq(2)
    end
  end
  it "returns 0 with input 20, 30, 40, 50" do
    (30..50).step(10) do |num|
      expect(num_decodings((num).to_s)).to eq(0)
    end
  end
  it "returns 3 with input 126" do
    expect(num_decodings('126')).to eq(3)
  end
  it "returns 3 with input 1268" do
    expect(num_decodings('1268')).to eq(3)
  end
  it "returns 5 with input 1212" do
    expect(num_decodings('1212')).to eq(5)
  end
end