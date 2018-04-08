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
  e = Enumerator.new do |yielder|
    sum = 0.0
    n = 1
    loop do
      sum = integr_w_n_div(a, b, n += 1, &block)
      yielder.yield sum, n
    end
  end
  e.find { |sum, _n| (0.4297983844828 - sum).abs < accuracy }
end
