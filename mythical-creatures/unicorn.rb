class Unicorn

  def initialize(name, color='white')
    @name = name
    @color = color
  end

  def name
    @name
  end

  def color
    @color
  end

  def white?
    @color == 'white'
  end

  def say(say)
    @sparkly_stuff = say.insert(0, '**;* ')[0..-1] << ' **;*'
    @sparkly_stuff
  end
end
