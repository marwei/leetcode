# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  result = 0

  (1...prices.length).each do |i|
    diff = prices[i] - prices[i - 1]
    result += diff if diff > 0
  end

  result
end
