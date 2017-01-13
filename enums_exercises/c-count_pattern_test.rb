gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class CountPatternTest < Minitest::Test

  def test_count_count_words_with_e
    words = ["thing", "phone", "bark", "belt", "shoe", "bath"]
    tally = 0
    words.each do |word|
      tally += 1 if word.include?('e')
    end
    assert_equal 3, tally
  end

  def test_count_numbers_greater_than_17
    numbers = [9, 18, 12, 17, 1, 3, 99]
    tally = 0
    numbers.each do |number|
      tally += 1 if number > 17
    end
    assert_equal 2, tally
  end

  def test_count_words_that_are_uppercase
    # skip
    words = ["trousers", "SOCKS", "sweater", "Cap", "SHOE", "TIE"]
    tally = 0
    words.each { |w| tally += 1 if w.upcase == w }
    assert_equal 3, tally
  end

  def test_count_words_ending_in_ing
    # skip
    words = ["thought", "brake", "shin", "juice", "trash"]
    tally = 0
    words.each { |w| tally += 1 if w.end_with?('ing') }
    assert_equal 0, tally
  end

  def test_count_even_numbers
    # skip
    numbers = [9, 2, 1, 3, 18, 39, 71, 4, 6]
    tally = 0
    numbers.each { |n| tally += 1 if n.even? }
    assert_equal 4, tally
  end

  def test_count_multiples_of_5
    # skip
    numbers = [2, 5, 19, 25, 35, 67]
    tally = 0
    numbers.each { |n| tally += 1 if n % 5 == 0 }
    assert_equal 3, tally
  end

  def test_count_round_prices
    # skip
    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    tally = 0
    prices.each { |p| tally += 1 if p.to_i == p }
    assert_equal 2, tally
  end

  def test_count_four_letter_words
    # skip
    words = ["bake", "bark", "corn", "apple", "wart", "bird", "umbrella", "fart"]
    tally = 0
    words.each { |w| tally += 1 if w.length == 4 }
    assert_equal 6, tally
  end

end