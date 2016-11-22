require_relative '../problem/168'

describe 'Problem 168' do
  it "returns A with 1" do
    expect(convert_to_title(1)).to eq('A')
  end
  it "returns Z with 26" do
    expect(convert_to_title(26)).to eq('Z')
  end
  it "returns AA with 27" do
    expect(convert_to_title(27)).to eq('AA')
  end
  it "returns AZ with 52" do
    expect(convert_to_title(52)).to eq('AZ')
  end
  it "returns BZ with 78" do
    expect(convert_to_title(78)).to eq('BZ')
  end
end