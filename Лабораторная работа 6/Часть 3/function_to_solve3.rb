# Ruby 2.3
def integr_w_n_div(a, b, n, lambda = nil, &block)
  block = lambda unless lambda.nil?
  res = (-block.call(a) + block.call(b)) / 2.0
  div = (b - a).to_f / n
  n.times do |i|
    res += block.call(a + i * div)
  end
  res * div
end
