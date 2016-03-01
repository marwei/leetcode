require_relative '../problem/206'
require_relative '../lib/list'

describe 'Problem 206' do
  before { allow(STDOUT).to receive(:puts) { '' } }
  after { allow(STDOUT).to receive(:puts) { STDOUT::puts } }
  it "returns the node itself with a single node" do
    head = ListNode.new(1)
    expect(reverse_list(head)).to eq(head)
  end
  it "swaps the nodes with a list of two nodes" do
    head = ListNode.new([1, 2])
    result = ListNode.new([2, 1])
    expect(reverse_list(head).list_all).to eq(result.list_all)
  end
  it "reverses the list" do
    head = ListNode.new([1, 2, 3, 4, 5])
    result = ListNode.new([5, 4, 3, 2, 1])
    expect(reverse_list(head).list_all).to eq(result.list_all)
  end
end