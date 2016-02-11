# @param {Integer} n
# @return {String[][]}
def solve_n_queens(n)
  return [] if n == 0 || n.nil?
  [].tap { |result| _solve_n_queens(n, 0, [], result) }
end

def _solve_n_queens(n, row_idx, curr_queens, result)
  if row_idx == n
    result.push draw_board n, curr_queens
    return
  end

  (0...n).each do |col|
    next unless is_valid_position row_idx, col, curr_queens
    _solve_n_queens(n, row_idx + 1, curr_queens + [col], result)
  end
end

def is_valid_position(row_idx, col_idx, curr_queens)
  curr_queens.each_with_index do |col, row|
    return false if col == col_idx
    return false if (row_idx - row).abs == (col_idx - col).abs
  end
  true
end

def draw_board(n, curr_queens)
  curr_queens.each_with_object([]) do |queen, memo|
    row = '.' * n
    memo.push row.tap { row[queen] = 'Q' }
  end
end