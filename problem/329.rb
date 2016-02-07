# @param {Integer[][]} matrix
# @return {Integer}
# 

class TwoDimensionPathFinder
  def initialize(matrix)
    @matrix = matrix
    @width = matrix.first.size
    @height = matrix.size
    @longest = Array.new(@height) { Array.new(@width, nil) }
  end

  def longest_path(current_y, current_x) # rubocop:disable Metrics/AbcSize
    return @longest[current_y][current_x] unless @longest[current_y][current_x].nil?

    current_node_path_length = 1

    [
      ([current_y, current_x - 1] if current_x > 0),
      ([current_y, current_x + 1] if current_x < @width - 1),
      ([current_y - 1, current_x] if current_y > 0),
      ([current_y + 1, current_x] if current_y < @height - 1)
    ].compact.each do |next_y, next_x|

      if @matrix[next_y][next_x] > @matrix[current_y][current_x]
        next_node_path_length = longest_path(next_y, next_x) + 1
        current_node_path_length = [next_node_path_length, current_node_path_length].max
      end

    end

    @longest[current_y][current_x] = current_node_path_length
    
    current_node_path_length
  end
end

def longest_increasing_path(matrix)
  return 0 if matrix.empty?

  m = TwoDimensionPathFinder.new(matrix)
  longest = 0

  matrix.each_with_index do |row, y|
    row.each_index do |x|
      longest = [longest, m.longest_path(y, x)].max
    end
  end

  p longest
end
