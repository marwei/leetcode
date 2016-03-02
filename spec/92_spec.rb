require_relative '../problem/92'
require_relative '../lib/list'

describe "Problem 92" do
  subject(:list) { ListNode.new([1, 2, 3, 4, 5, 6]) }
  it "doesn't change the list if m >= n" do
    expect{ reverse_between(list, 3, 3) }.to_not change { list }
    expect{ reverse_between(list, 4, 3) }.to_not change { list }
  end
  it "reverse the entire list if m = 1, n = length_of_list" do
    reversed_list = ListNode.new([6, 5, 4, 3, 2, 1])
    expect(reverse_between(list, 1, 6).list_all).to eq(reversed_list.list_all)
  end
  it "reverse nodes between m and n" do
    reversed_list = ListNode.new([1, 2, 5, 4, 3, 6])
    expect(reverse_between(list, 3, 5).list_all).to eq(reversed_list.list_all)
  end
end
