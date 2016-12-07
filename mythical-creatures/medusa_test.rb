gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    # skip
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    # skip
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

### Write your own tests ###
  def test_can_only_have_three_victims
    medusa = Medusa.new("Cassiopeia")
    victim_one = Person.new("Perseus_1")
    victim_two = Person.new("Perseus_2")
    victim_three = Person.new("Perseus_3")
    victim_four = Person.new("Perseus_4")

    medusa.stare(victim_one)
    assert victim_one.stoned?

    medusa.stare(victim_two)
    assert victim_two.stoned?

    medusa.stare(victim_three)
    assert victim_three.stoned?
    assert_equal 3, medusa.statues.count

    medusa.stare(victim_four)
    assert_equal 3, medusa.statues.count
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim_one = Person.new("Perseus_1")
    victim_two = Person.new("Perseus_2")
    victim_three = Person.new("Perseus_3")
    victim_four = Person.new("Perseus_4")

    medusa.stare(victim_one)
    assert victim_one.stoned?

    medusa.stare(victim_two)
    assert victim_two.stoned?

    medusa.stare(victim_three)
    assert victim_three.stoned?
    assert_equal 3, medusa.statues.count

    medusa.stare(victim_four)
    assert_equal 3, medusa.statues.count
    assert medusa.statues.include?(victim_four)
    refute medusa.statues.include?(victim_one)
  end

end
