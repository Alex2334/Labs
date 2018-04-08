require 'test_helper'

class PalindromeControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get palindrome_input_url
    assert_response :success
  end

  test 'should get output' do
    get palindrome_output_url
    assert_response :success
  end

  test 'should get timeout' do
    get palindrome_output_url, params: { val: 65_445_354 }
    assert_nil assigns[:result]
  end

  test 'should get 0 for negative numbers' do
    get palindrome_output_url, params: { val: -23_423 }
    assert_equal assigns[:result], 0
  end

  test 'should get 0 for string' do
    get palindrome_output_url, params: { val: 'test' }
    assert_equal assigns[:result], 0
  end

  test 'should get res' do
    get palindrome_output_url, params: { val: 2544 }
    assert_equal assigns[:result], 6996
  end

  test 'should get res2' do
    get palindrome_output_url, params: { val: 111 }
    assert_equal assigns[:result], 111
  end

  test 'should get res3' do
    get palindrome_output_url, params: { val: 31.415 }
    assert_equal assigns[:result], 44
  end
end
