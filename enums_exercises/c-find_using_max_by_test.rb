gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class FindUsingMaxByTest < Minitest::Test
  # You get the first test for free... it's already passing.
  def test_longest_word
    words = ["apple", "banana", "cherry", "date", "eggplant"]

    found_word = words.max_by do |word|
      word.length
    end

    assert_equal "eggplant", found_word
  end

  # This one is missing the block inside the loop.
  def test_shortest_word
    # skip
    words = ["apple", "banana", "cherry", "date", "eggplant"]

    found_word = words.max_by do |word|
      word.length * -1
    end

    assert_equal "date", found_word
  end

  # This one is missing the entire loop
  def test_array_with_the_most_items
    # skip
    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]
    biggest_array = arrays.max_by { |a| a.size }

    assert_equal [1, 2, 3, 4, 5], biggest_array
  end

  # You're on your own on this one.
  def test_array_with_the_fewest_items
    # skip
    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]
    smallest_array = arrays.max_by { |a| a.size * -1 }

    assert_equal [:a, :b, :c], smallest_array
  end

  def test_biggest_number

    numbers = [1, 10, 100, 1000, 10000, 1000000]
    found = numbers.max_by { |n| n }

    assert_equal 1000000, found
  end

  def test_smallest_number
    # skip
    numbers = [1, 10, 100, 1000, 10000, 1000000]
    found = numbers.max_by { |n| n * -1 }

    assert_equal 1, found
  end

  def test_most_programmers
    # skip
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}
    most_programmers = programmers.max_by { |p| p }

    assert_equal :ruby, most_programmers.first
  end

  def test_fewest_programmers
    # skip
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}
    fewest_programmers = programmers.max_by { |p| p.last.count * -1 }

    assert_equal :java, fewest_programmers.first
  end
end
