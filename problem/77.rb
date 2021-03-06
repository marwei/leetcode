def combine(n, k)
  return [] if k == 0
  [].tap { |result| _combine(n, k, 1, [], result) }
end

def _combine(n, k, current_val, current_combo, result)
  return if current_combo.length + n - current_val + 1 < k
  (current_val..n).each do |val|
    temp = current_combo.dup.push val
    if temp.length == k
      result.push temp
    else
      _combine(n, k, val + 1, temp, result)
    end
  end
end