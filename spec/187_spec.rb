require_relative '../problem/187'

describe "Problem 187" do
  it "returns [] with string shorter than 20 chars" do
    expect(find_repeated_dna_sequences('AAAAACCCCCAAAAACCCC')).to eq([])
  end
  it "returns [] with 'AAAAACCBCCAAAAACCCCC'" do
    expect(find_repeated_dna_sequences('AAAAACCBCCAAAAACCCCC')).to eq([])
  end
  it "returns ['AAAAACCCCC'] with 'AAAAACCCCCAAAAACCCCC'" do
    expect(find_repeated_dna_sequences('AAAAACCCCCAAAAACCCCC')).to eq(['AAAAACCCCC'])
  end
  it "returns ['AAAAACCCCC', 'CCCCCAAAAA'] with 'AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT'" do
    expect(find_repeated_dna_sequences('AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT')).to eq(['AAAAACCCCC', 'CCCCCAAAAA'])
  end
end





