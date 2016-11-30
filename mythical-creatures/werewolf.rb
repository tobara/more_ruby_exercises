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
    unless human? and !hungry?
      @hungry = !@hungry
    end
  end

  def wolf?
    @human == false
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    @victim = victim
    unless human?
      @victim.status = :dead
      @hungry = false
    end
  end
end
