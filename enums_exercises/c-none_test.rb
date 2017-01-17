gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NoneTest < Minitest::Test

  def test_none_are_broken
    things = ["functional", "working", "works", "fixed", "good"]
    none_broken = things.none? do |thing|
      thing == "broken"
    end
    assert none_broken
  end

  def test_double_negative
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = numbers.none? do |number|
      number.round(number) == 0
    end
    refute not_none_negative
  end

  def test_none_are_negative
    # skip
    numbers = [9, 3, 1, 8, 3, 3, 5]
    none_negative = numbers.none? { |n| n.round(n).is_a?(Integer) }
    assert none_negative
  end

  def test_none_shall_pass
    # skip
    critters = ["elf", "hobbit", "dwarf", "wizard", "human"]
    none_shall_pass = critters.none? { |c| c.include?('Me') }
    assert none_shall_pass
  end

  def test_one_or_more_shall_pass
    # skip
    phrases = ["go", "left", "can cross", "shall pass", "must stay", "tarried"]
    none_shall_pass = phrases.none? { |p| p.include?('e') }
    refute none_shall_pass
  end

  def test_none_even
    # skip
    numbers = [3, 9, 15, 21, 19]
    none_even = numbers.none? { |n| n.even? }
    assert none_even
  end

end
