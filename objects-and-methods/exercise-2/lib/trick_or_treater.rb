class TrickOrTreater
  attr_reader :bag

  def initialize(costume, sugar_high=0)
    @costume = costume
    @sugar_high = sugar_high
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !bag.empty?
  end

  def candy_count
    bag.count
  end

  def eat
    @yum = bag.candies.pop
    @sugar_high += @yum.sugar
  end

  def sugar_level
    @sugar_high
  end

end
