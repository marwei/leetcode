require_relative "../problem/316"

describe "Problem 316" do
  it "returns a with input a" do
    expect(remove_duplicate_letters('a')).to eq('a')
  end
  it "returns a with input aa" do
    expect(remove_duplicate_letters('aa')).to eq('a')
  end
  it "returns abc with input bcabc" do
    expect(remove_duplicate_letters('bcabc')).to eq('abc')
  end
  it "returns acdb with input cbacdcbc" do
    expect(remove_duplicate_letters('cbacdcbc')).to eq('acdb')
  end
end