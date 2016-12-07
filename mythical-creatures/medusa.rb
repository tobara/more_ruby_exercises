class Medusa

  def initialize(name)
    @name = name
    @stautes = []
  end

  def name
    @name
  end

  def stare(victim)
    statues.first.stoned = false, statues.delete_at(0) if statues.count == 3
    victim.stoned = true
    statues.push(victim)
  end

  def statues
    @stautes
  end
end


class Person
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def name
    @name
  end

  def stoned?
    @stoned
  end
end




