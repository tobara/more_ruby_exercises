class Wizard

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast_count = 0
  end

  def name
    @name
  end

  def bearded?
    @bearded
  end

  def incantation(powers)
    @root_powers = "sudo " + powers
    @root_powers
  end

  def rested?
    @rested
  end

  def cast
    casted
    return "MAGIC MISSILE!"
  end

  def casted
    @cast_count += 1
    @rested = @cast_count < 3 ? true : false
  end
end
