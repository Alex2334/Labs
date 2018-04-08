# Ruby 2.3
def function(x)
  x / Math.sqrt(1 + x**3)
end

def integr_w_n_div(a, b, n)
  res = 0
  div = (b - a).to_f / n
  n.times do |i|
    res += yield(a + i * div)
  end
  res * div
end

def integrate(a, b, accuracy, &block)
  i = 1
  res = 0
  loop do
    i += 1
    res = integr_w_n_div(a, b, i, &block)
    break if (0.4297983844828 - res).abs < accuracy
  end
  [res, i]
end
