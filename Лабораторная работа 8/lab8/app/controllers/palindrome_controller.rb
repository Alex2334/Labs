class PalindromeController < ApplicationController
  def input; end

  def output
    res = [[n = 0, a = params[:val].to_i, a.to_s == a.to_s.reverse]]
    a = 0 if a < 0
    loop do
      break if a.to_s == a.to_s.reverse
      a += a.to_s.reverse!.to_i
      res.push [n += 1, a, a.to_s == a.to_s.reverse]
      next unless n >= 10_000
      a = nil
      res = []
      break
    end
    @solve = res
    @result = a
  end
end
