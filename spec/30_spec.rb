require_relative '../problem/30'

describe "Problem 30" do
  it "return correct result" do
    s = "barfoothefoobarman"
    words = ["foo", "bar"]
    res = [0, 9]

    expect(find_substring(s, words)).to eq(res)
  end

  it "return correct result" do
    s = "barfoofoobarthefoobarman"
    words = ["foo", "bar", "the"]
    res = [6, 9, 12]

    expect(find_substring(s, words)).to eq(res)
  end

  it "return correct result" do
    s = "wordgoodgoodgoodbestword"
    words = ["word", "good", "best", "good"]
    res = [8]

    expect(find_substring(s, words)).to eq(res)
  end

  it "return correct result" do
    s = "lingmindraboofooowingdingbarrwingmonkeypoundcake"
    words = ["fooo","barr","wing","ding","wing"]
    res = [13]

    expect(find_substring(s, words)).to eq(res)
  end
end
