class Adult

  def initialize
    @drink_count = 0
    @sober = true
  end

  def sober?
    drink_count
    return @sober
  end

  def consume_an_alcoholic_beverage
    @drink_count += 1
  end

  def drink_count
    @sober = case @drink_count
      when 0 then true
      when 1 then true
      when 2 then true
      when 3 then false
      when 4 then false
    end
  end
end
