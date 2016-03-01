require_relative '../problem/25.rb'
require_relative '../lib/list.rb'

describe "Problem 25" do
  it "doesn't modify the list when k > length of list" do
    list = ListNode.new([1, 2, 3])
    expect(reverse_k_group(list, 4)).to eq(list)
  end
  it "reverse every k nodes of the list" do
    list = ListNode.new([1, 2, 3, 4, 5, 6])
    result = ListNode.new([3, 2, 1, 6, 5, 4])
    expect(reverse_k_group(list, 3).list_all).to eq(result.list_all)
  end
  it "ignores the last length % k nodes" do
    list = ListNode.new([1, 2, 3, 4, 5, 6, 7, 8])
    result = ListNode.new([3, 2, 1, 6, 5, 4, 7, 8])
    expect(reverse_k_group(list, 3).list_all).to eq(result.list_all)
  end
end

