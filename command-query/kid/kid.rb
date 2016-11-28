class Kid

  def initialize
    @sugar_intake = 0
    @sugar_from_candy = 5
    @hyperactive = false
  end

  def eat_candy
    @sugar_intake += @sugar_from_candy
  end

  def grams_of_sugar_eaten
    @sugar_intake
  end

  def hyperactive?
    unless @sugar_intake < 60
      @hyperactive = true
    end
    @hyperactive
  end
end
