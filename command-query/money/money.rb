class Money

  def initialize
    @amount = 0
  end

  def amount
    @amount
  end

  def earn(earned)
    @earned = earned
    @amount += @earned
  end

  def spend(spending)
    @spending = spending
    if (@amount - @spending < 0)
      return "You can't spend what you don't have"
    else
      @amount -= @spending
    end
  end
end
