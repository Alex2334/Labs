# test_for_sting_array.rb
require './string_array.rb'
require 'minitest/autorun'
# Test class
class Test1 < MiniTest::Unit::TestCase
  def test_1
    inp = ['Пример текста на русском', 'языке', 'тут всё должно остаться']
    a = Text.new
    a.add_lines_as_param!(inp)
    assert_equal(inp, a.correct)
  end

  def test_2
    inp = ['this s an', 'example of spch', 'sntncs in english']
    b = Text.new
    b.add_lines_as_param!(inp)
    assert_equal(['this an', 'example of', 'in english'], b.correct)
  end
end
