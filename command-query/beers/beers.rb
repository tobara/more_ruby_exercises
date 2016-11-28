class Beers

  def initialize
    @beers = 99
  end

  def inventory
    @beers
  end

  def take_one_down_and_pass_it_around
    @beers -= 1
  end

  def restock
    @beers = 99
  end
end
