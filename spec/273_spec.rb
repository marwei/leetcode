require_relative "../problem/273"

describe "Problem 273" do
  it "returns 'Zero' with input 0" do
    expect(number_to_words(0)).to eq("Zero")
  end
  it "returns 'Four Million Ten' with input 0" do
    expect(number_to_words(4000010)).to eq("Four Million Ten")
  end

  it "returns 'One Billion One Million Ten' with input 0" do
    expect(number_to_words(1001000010)).to eq("One Billion One Million Ten")
  end
  it "returns 'Twelve Thousand Three Hundred Forty Five' with input 12345" do
    expect(number_to_words(12345)).to eq("Twelve Thousand Three Hundred Forty Five")
  end
end