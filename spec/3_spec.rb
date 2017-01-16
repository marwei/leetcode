require_relative("../problem/3")

describe "Problem 3" do
  it "should return 0 for input ''" do
    expect(length_of_longest_substring("")).to be 0
  end

  it "should return 1 for input 'bbbbb'" do
    expect(length_of_longest_substring("bbbbb")).to be 1
  end

  it "should return 3 for input 'abcabcabb'" do
    expect(length_of_longest_substring("abcabcabb")).to be 3
  end

  it "should return 3 for input 'pwwkew'" do
    expect(length_of_longest_substring("pwwkew")).to be 3
  end
end
