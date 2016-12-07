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
    @hungry = @hunger > 0 ? true : false
  end

  def eat
    @hunger -= 1
  end
end
