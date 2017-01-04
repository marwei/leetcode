require_relative '../problem/7.rb'

describe "Problem 7" do
  it "returns 0 if x = 0" do
    expect(reverse 0).to eq 0
  end
  it "returns 1 if n = 1" do
    expect(reverse 1).to eq 1
  end
  it "returns 21 if n = 12" do
    expect(reverse 12).to eq 21
  end
  it "returns 123 if n = 321" do
    expect(reverse 321).to eq 123
  end
  it "returns -4321 if n = -1234" do
    expect(reverse -1234).to eq -4321
  end
end