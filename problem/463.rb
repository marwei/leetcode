def island_perimeter(grid)
  res = 0

  grid.each_with_index do |row, row_idx|
    row.each_with_index do |piece, col_idx|
      next if piece.zero?
      res += 4 
      res -= 2 if is_island_piece(row_idx - 1, col_idx, grid)
      res -= 2 if is_island_piece(row_idx, col_idx - 1, grid)
    end
  end

  res
end

def is_island_piece(row_idx, col_idx, grid)
  return false if row_idx < 0 || row_idx >= grid.size
  return false if col_idx < 0 || col_idx >= grid[0].size
  return false if grid[row_idx][col_idx] == 0
  true
end
