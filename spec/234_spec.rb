require_relative '../problem/234'
require_relative '../lib/list'

describe "Problem 234" do
  context "when the list has an odd num of elements" do
    it "returns true if the list has one element" do
      expect(is_palindrome(ListNode.new(1))).to be true
    end
    it "returns true if the list is a palindrome" do
      expect(is_palindrome(ListNode.new([2, 3, 2]))).to be true
      expect(is_palindrome(ListNode.new([2, 3, 4, 5, 4, 3, 2]))).to be true
    end
    it "returns false if the list isn't a palindrome" do
      expect(is_palindrome(ListNode.new([2, 3, 4]))).to be false
      expect(is_palindrome(ListNode.new([2, 3, 4, 5, 4, 6, 2]))).to be false
    end
  end
  context "when the list has an even num of elements" do
    it "returns true if the list has two same elements" do
      expect(is_palindrome(ListNode.new([2, 2]))).to be true
    end
    it "returns false if the list has two different elements" do
      expect(is_palindrome(ListNode.new([2, 3]))).to be false
    end
    it "returns true if the list is a palindrome" do
      expect(is_palindrome(ListNode.new([2, 3, 3, 2]))).to be true
      expect(is_palindrome(ListNode.new([2, 3, 4, 5, 5, 4, 3, 2]))).to be true
    end
    it "returns false if the list isn't a palindrome" do
      expect(is_palindrome(ListNode.new([2, 3, 4, 3]))).to be false
      expect(is_palindrome(ListNode.new([2, 3, 4, 5, 5, 4, 6, 2]))).to be false
    end
  end
end
