require_relative '../problem/166.rb'

describe 'Problem 166' do
  it 'should return 0.5 if argument is 1, 2' do
    expect(fraction_to_decimal 1, 2).to eq('0.5')
  end
  it 'should return 2 if argument is 2, 1' do
    expect(fraction_to_decimal 2, 1).to eq('2')
  end
  it 'should return 0.(6) if argument is 2, 3' do
    expect(fraction_to_decimal 2, 3).to eq('0.(6)')
  end
  it 'should return 0.1(6) if argument is 1, 6' do
    expect(fraction_to_decimal 1, 6).to eq('0.1(6)')
  end
  it 'should return 0.(076923) if argument is 1, 13' do
    expect(fraction_to_decimal 1, 13).to eq('0.(076923)')
  end
end