class Centaur

  def initialize(name, breed)
    @name = name
    @breed = breed
    @shoot = 'Twang!!!'
    @run = 'Clop clop clop clop!!!'
    @cranky = false
    @standing = true
    @count = 0
    @sleeping = 'NO!'
    @laying = false
    @sick = false
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def shoot
    @count += 1
    @shoot = 'NO!' if cranky?
    @shoot
  end

  def run
    @count += 1
    cranky? == true ? @run = "NO!" :
    @run
  end

  def cranky?
    @cranky = @count >= 3 ? true : false
  end

  def standing?
    @standing
  end

  def sleep
    @sleeping = 'Okay, I will sleep' and @count = 0 if not standing?
    @sleeping
  end

  def lay_down
    @standing = false
    @laying = true
    @shoot = 'NO!'
    @run = 'NO!'
  end

  def laying?
    @laying
  end

  def stand_up
    reset
  end

  def drink_potion
    if standing?
      @sick = @count < 3 ? true :
      reset if not @sick == true
    else
      "I can't"
    end
  end

  def sick?
    @sick
  end

  def reset
    initialize(@name, @breed)
  end
end
