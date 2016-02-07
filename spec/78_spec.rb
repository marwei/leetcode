require_relative '../problem/78.rb'

describe "Problem 78" do
  it 'should return nil if argument is nil' do
    expect(subsets(nil)).to eq([])
  end
  it 'should return [[]] if argument is []' do
    expect(subsets([])).to eq([[]])
  end
  it 'should return [[], [0]] if argument is [0]' do
    expect(subsets([0])).to eq([[], [0]])
  end
  it 'should return all subsets of [1, 2, 3]' do
    expect(subsets([1, 2, 3])).to contain_exactly([], [1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3])
  end
end