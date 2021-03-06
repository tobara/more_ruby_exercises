class Ogre
  attr_accessor :swings
  def initialize(name, home='Swamp')
    @name = name
    @home = home
    @encounters = 0
    @swings =  0
  end

  def name
    @name
  end

  def home
    @home
  end

  def encounter(human)
    @encounters += 1
    human.encounters(self)
    human.knocked_out = @swings % 1 == 0
  end

  def encounter_counter
    @encounters
  end

  def swing_at(human)
    @swings += 1
  end

  def swings
    @swings
  end

  def apologize(human)
    human.knocked_out = false
  end
end


class Human
  attr_accessor :knocked_out

  def initialize(encounters=0)
    @encounters = encounters
    @saw_ogre = false
    @knocked_out = false
  end

  def name
    "Jane"
  end

  def encounters(ogre)
    @encounters += 1
    @saw_ogre = @encounters % 3 == 0 && @encounters != 0
    ogre.swings += 1 if @saw_ogre == true
  end

  def encounter_counter
    @encounters
  end

  def notices_ogre?
   @saw_ogre
  end

  def knocked_out?
    @knocked_out
  end
end
