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
    if cranky?
      @shoot = 'NO!'
    end
    @shoot
  end

  def run
    @count += 1
    if cranky?
      @run = 'NO!'
    end
    @run
  end

  def cranky?
    @cranky = case
    when @count >= 3 then true
    end
    @cranky
  end

  def standing?
    @standing
  end

  def sleep
    unless standing?
      @sleeping = 'Okay, I will sleep'
      @count = 0
    end
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
      if @count < 3
        @sick = true
      else
        reset
      end
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
