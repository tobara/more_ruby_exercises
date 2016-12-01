class Pirate

  def initialize(name, job='Scallywag', booty=0)
    @name = name
    @job = job
    @cursed = false
    @act_count = 0
    @booty = booty
    @did_some_robbon = false
  end

  def name
    @name
  end

  def job
    @job
  end

  def commit_heinous_act
    @act_count += 1
    if @act_count >= 3
      @cursed = true
    end
  end

  def cursed?
    @cursed
  end

  def rob_ship
    @did_some_robbon = true
    @booty =+ 100
  end

  def did_some_robbon?
    @did_some_robbon
  end

  def how_much_booty?
    @booty
  end
end
