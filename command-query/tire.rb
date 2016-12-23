class Tire

  def initialize
    @flat = false
  end

  def flat?
    @flat
  end

  def blow_out
    @flat = !@flat
  end
end
