# test_for_solve.rb
require './solve.rb'
require 'minitest/autorun'
# Test class
class Test1 < MiniTest::Unit::TestCase
  def test_1
    a = 0
    b = 0
    res = 0
    assert_in_delta(res, solve(a, b), 10**-4)
  end

  def test_2
    a = 0
    b = 1
    res = 0.6492232052047624
    assert_in_delta(res, solve(a, b), 10**-4)
  end

  def test_3
    a = 1
    b = 0
    res = Math.sin(1)
    assert_in_delta(res, solve(a, b), 10**-4)
  end

  def test_4
    a = -1
    b = 0
    res = -Math.sin(1)
    assert_in_delta(res, solve(a, b), 10**-4)
  end

  def test_5
    a = Math::PI / 2
    b = 0
    res = 1
    assert_in_delta(res, solve(a, b), 10**-4)
  end
end
