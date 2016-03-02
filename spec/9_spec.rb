require_relative '../problem/9'

describe "Problem 9" do
  it "returns false with x < 0" do
    expect(is_palindrome(-1)).to be false
  end
  it "returns true with x = 1" do
    expect(is_palindrome(1)).to be true
  end
  it "returns true with x = 11" do
    expect(is_palindrome(11)).to be true
  end
  it "returns false with x = 13" do
    expect(is_palindrome(13)).to be false
  end
  it "returns true with x = 121" do
    expect(is_palindrome(121)).to be true
  end
  it "returns false with x = 123" do
    expect(is_palindrome(123)).to be false
  end
  it "returns true with x = 1234321" do
    expect(is_palindrome(1234321)).to be true
  end
  it "returns true with x = 12344321" do
    expect(is_palindrome(12344321)).to be true
  end
  it "returns false with x = 1234521" do
    expect(is_palindrome(1234521)).to be false
  end
  it "returns false with x = 12344521" do
    expect(is_palindrome(12344521)).to be false
  end
end