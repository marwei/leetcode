require_relative '../problem/150'

describe "Problem 150" do
  it "returns [] with input []" do
    board = []
    solve(board)
    expect(board).to eq([])
  end
  it "returns ['O'] with input ['O']" do
    board = ['O']
    solve(board)
    expect(board).to eq(['O'])
  end
  it "returns ['XXX', 'XXX', 'XXX'] with input ['XXX', 'XOX', 'XXX']" do
    board = ['XXX', 'XOX', 'XXX']
    solve(board)
    expect(board).to eq(["XXX", "XXX", "XXX"])
  end
  it "returns ['XXX', 'XOX', 'XOX'] with input ['XXX', 'XOX', 'XOX']" do
    board = ['XXX', 'XOX', 'XOX']
    solve(board)
    expect(board).to eq(["XXX", "XOX", "XOX"])
  end
  it "returns ['XXXX', 'XXXX', 'XXXX', 'XOXX'] with input ['XXXX', 'XOOX', 'XXOX', 'XOXX']" do
    board = ['XXXX', 'XOOX', 'XXOX', 'XOXX']
    solve(board)
    expect(board).to eq(["XXXX", "XXXX", "XXXX", "XOXX"])
  end
end
