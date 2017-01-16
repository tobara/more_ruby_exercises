gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AllPatternTest < Minitest::Test

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    assert all_zeros
  end

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false if number == 0
    end
    refute all_zeros
  end

  def test_all_gone
    # skip
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = true
    words.each { |w| all_gone = false if w != "gone" }
    assert all_gone
  end

  def test_not_all_gone
    # skip
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = true
    words.each { |w| all_gone = false if w != "gone" }
    refute all_gone
  end

  def test_all_empty
    # skip
    strings = ["", "", "", "", "", "", ""]
    all_empty = true
    strings.each { |s| all_empty = false if s != "" }
    assert all_empty
  end

  def test_not_all_empty
    # skip
    strings = ["", "", "", "full", "", "", ""]
    all_empty = true
    strings.each { |s| all_empty = false if s != "" }
    refute all_empty
  end

  def test_not_all_uppercase
    # skip
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_caps = true
    words.each { |w| all_caps = false if w != w.upcase }
    refute all_caps
  end

  def test_all_lies
    # skip
    lies = [false, false, false, false]
    all_lies = true
    lies.each { |l| all_lies = false unless l == false }
    assert all_lies
  end

  def test_all_multiples_of_7
    # skip
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of_7 = true
    numbers.each { |n| all_multiples_of_7 = false unless (n % 7).zero? }
    assert all_multiples_of_7
  end

  def test_not_all_3_digits_long
    # skip
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = true
    numbers.each { |n| all_3_digits = false if n.to_s.length != 3 }
    refute all_3_digits
  end

  def test_all_4_letter_words
    # skip
    words = ["love", "hate", "fire", "bird", "call"]
    all_4_letters = true
    words.each { |w| all_4_letters = false if w.length != 4 }
    assert all_4_letters
  end

end
