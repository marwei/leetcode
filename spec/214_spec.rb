require_relative '../problem/214'

describe "Problem 214" do
  it "returns 'a' with input 'a'" do
    expect(shortest_palindrome('a')).to eq('a')
  end
  it "returns 'aba' with input 'ba'" do
    expect(shortest_palindrome('ba')).to eq('aba')
  end
  it "returns 'aaacecaaa' with input 'aacecaaa'" do
    expect(shortest_palindrome('aacecaaa')).to eq('aaacecaaa')
  end
  it "returns 'dcbabcd' with input 'abcd'" do
    expect(shortest_palindrome('abcd')).to eq('dcbabcd')
  end
  it "returns 'dcabbacd' with input 'abbacd'" do
    expect(shortest_palindrome('abbacd')).to eq('dcabbacd')
  end
end
