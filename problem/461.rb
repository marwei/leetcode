def hamming_distance(x, y)
  dist = 0

  until x.zero? && y.zero?
    x, _x = x.divmod(2)   
    y, _y = y.divmod(2)
    dist += _x ^ _y
  end

  dist
end

