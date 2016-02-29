# @param {Integer[]} height
# @return {Integer}
def trap(height)
  return 0 if height.empty?
  result = 0
  lbound, rbound = 0, height.length - 1
  lheight, rheight = 0, 0
  until lbound == rbound
    lheight = [lheight, height[lbound]].max
    rheight = [rheight, height[rbound]].max

    if lheight < rheight
      result += lheight - height[lbound]
      lbound += 1
    else
      result += rheight - height[rbound]
      rbound -= 1
    end
  end
  result
end