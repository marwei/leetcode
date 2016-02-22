# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve(board)
  return if board.empty?

  max_x = board[0].size-1
  max_y = board.size-1
  bfs_queue = []
  (0..max_y).each do |y|
    bfs_queue.push [y, 0] if board[y][0] == 'O'
    bfs_queue.push [y, max_x] if board[y][max_x] == 'O'
  end
  (0..max_x).each do |x|
    bfs_queue.push [0, x] if board[0][x] == 'O'
    bfs_queue.push [max_y, x] if board[max_y][x] == 'O'
  end

  until bfs_queue.empty?
    cur = bfs_queue.shift
    next if board[cur[0]][cur[1]] == '#'

    board[cur[0]][cur[1]] = '#'    
    
    [
      ([cur[0], cur[1]-1] if cur[1] > 0),
      ([cur[0], cur[1]+1] if cur[1] < max_x),
      ([cur[0]-1, cur[1]] if cur[0] > 0),
      ([cur[0]+1, cur[1]] if cur[0] < max_y)
    ].compact.each do |to|
      bfs_queue.push to if board[to[0]][to[1]] == 'O'
    end
  end

  (0..max_y).each do |y|
    (0..max_x).each do |x|
      next if board[y][x] == 'X'
      board[y][x] = 'X' if board[y][x] == 'O'
      board[y][x] = 'O' if board[y][x] == '#'
    end
  end
  nil
end

board = ['XXXX',
         'XOOX',
         'XXOX',
         'XOXX']

# board = ['XXX', 
#          'XOX', 
#          'XXX']

# board = ['O']

solve(board)

p board