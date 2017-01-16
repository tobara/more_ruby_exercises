gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_find_first_seven_letter_word
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = nil
    words.each do |word|
      if word.length == 7
        found = word
        break
      end
    end
    assert_equal "unicorn", found
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = nil
    words.each do |word|
      if word == "waldo"
        found = word
        break
      end
    end
    assert_nil nil, found
  end

  def test_find_waldo
    # skip
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = nil
    words.each { |w| w == "waldo" ?  found = w : nil }
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words
    # skip
    words = ["piglet", "porridge", "bear", "blueberry"]
    found = nil
    words.each { |w| found = we if w.length == 3 }
    assert_nil nil, found
  end

  def test_find_13
    # skip
    numbers = [2, 13, 19, 8, 3, 27]
    found = nil
    # fix readability and maintanence numbers.each { |n| n == 13 ? found = n : nil }
    # no reason for ternary.  Alterantive solution below.
    numbers.each { |n| break found = n if n == 13 }
    assert_equal 13, found
  end

  def test_find_first_even_number
    # skip
    numbers = [3, 7, 13, 11, 10, 2, 17]
    found = nil
    numbers.each do |n|
      if n.even?
        found = n
        break
      end
    end
    assert_equal 10, found
  end

  def test_find_first_multiple_of_3
    numbers = [2, 8, 9, 27, 24, 5]
    found = nil
    #fix readability and maintanence
    #old solution:  numbers.each { |n| n % 3 == 0 ? (break found = n) : nil }
    #No reason for ternary.  Alterantive solution below.
    numbers.each { |n| break found = n if (n % 3).zero? }
    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    # skip
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    found = nil
    #fix readability and maintanence
    #old solution: words.each { |w| w.start_with?('q') ? (found = w; break ) : nil }
    #No reason for ternary or multiple statements separator;  Alterantive solution below.
    words.each { |w| break found = w if w.start_with?('q') }
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er
    # skip
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    found = nil
    #fix readability and maintanence
    #old solution: words.each { |w| w.end_with?('er') ? (break found = w) : nil }
    #No reason for ternary. Alternative solution below.
    words.each { |w| break found = w if w.end_with?('er') }
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20
    # skip
    numbers = [1, 8, 19, 21, 29, 31, 34]
    found = nil
    #fix readability and maintanence
    #old solution: numbers.each { |n| found = n; break if n > 20 }
    #No reason for multiple statements separator.  Alternative solution below.
    numbers.each { |n| break found = n if n > 20 }
    assert_equal 21, found
  end

end
