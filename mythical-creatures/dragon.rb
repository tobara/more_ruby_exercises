class Dragon

  def initialize (name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger = 3
  end

  def name
    @name
  end

  def rider
    @rider
  end

  def color
    @color
  end

  def hungry?
    @hungry = case
    when @hunger > 0 then true
    when @hunger < 0 then false
    end
    @hungry
  end

  def eat
    @hunger -= 1
  end
end
