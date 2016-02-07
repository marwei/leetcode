def can_win_nim(n)
  (n % 4).zero? ? false : true
end

p can_win_nim(4)
