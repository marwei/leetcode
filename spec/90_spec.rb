require_relative '../problem/90.rb'

describe "Problem 90" do
  it 'should return nil if argument is nil' do
    expect(subsets_with_dup(nil)).to be_nil
  end
  it 'should return [] if argument is []' do
    expect(subsets_with_dup([])).to eq([[]])
  end
  it 'should return [[], [0]] if argument is [0]' do
    expect(subsets_with_dup([0])).to eq([[], [0]])
  end
  it 'should return all subsets of [1, 2, 3]' do
    expect(subsets_with_dup([1, 2, 3])).to eq([[], [1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3]])
  end
  it 'should return all subsets of [1, 2, 2] with one [1, 2] and [2]' do
    expect(subsets_with_dup([1, 2, 2])).to eq([[], [1], [1, 2], [1, 2, 2], [2], [2, 2]])
  end
end