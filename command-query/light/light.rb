class Light

  def initialize
    @light_on = false
  end

  def on?
    @light_on
  end

  def turn_on
    @light_on = true
  end
end
