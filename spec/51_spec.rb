require_relative "../problem/51.rb"

describe "Problem 51" do
  it "returns [] for n = nil" do
    expect(solve_n_queens nil).to eq([])
  end
  it "returns [] for n = 0" do
    expect(solve_n_queens 0).to eq([])
  end
  it "returns [['Q']] for n = 1" do
    expect(solve_n_queens 1).to eq([['Q']])
  end
  it "returns [[]] for n = 2" do
    expect(solve_n_queens 2).to eq([])
  end
  it "returns [[]] for n = 3" do
    expect(solve_n_queens 3).to eq([])
  end
  it "returns correct result for n = 4" do
    expect(solve_n_queens 4).to eq([[".Q..", "...Q", "Q...", "..Q."], ["..Q.", "Q...", "...Q", ".Q.."]])
  end
  it "returns correct result for n = 5" do
    expect(solve_n_queens 5).to eq([["Q....", "..Q..", "....Q", ".Q...", "...Q."], ["Q....", "...Q.", ".Q...", "....Q", "..Q.."], [".Q...", "...Q.", "Q....", "..Q..", "....Q"], [".Q...", "....Q", "..Q..", "Q....", "...Q."], ["..Q..", "Q....", "...Q.", ".Q...", "....Q"], ["..Q..", "....Q", ".Q...", "...Q.", "Q...."], ["...Q.", "Q....", "..Q..", "....Q", ".Q..."], ["...Q.", ".Q...", "....Q", "..Q..", "Q...."], ["....Q", ".Q...", "...Q.", "Q....", "..Q.."], ["....Q", "..Q..", "Q....", "...Q.", ".Q..."]])
  end

end

