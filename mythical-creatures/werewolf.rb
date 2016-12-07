class Werewolf

  def initialize(name, location='Unknown')
    @name = name
    @location = location
    @human = true
    @hungry = false
  end

  def name
    @name
  end

  def location
    @location
  end

  def human?
    @human == true
  end

  def change!
    @human = !@human
    @hungry = !@hungry if not human? and !hungry?
  end

  def wolf?
    @human == false
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    @victim = victim
    @victim.status = :dead and @hungry = false if not human?
  end
end
