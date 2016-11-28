class Cupcakes
  def initialize
    @cupcakes = []
  end

  def sweetest
    @sweetest = @cupcakes.sort_by {|cupcake|
      cupcake.sugar
    }.last
    @sweetest
  end

  def <<(cupcake)
    @cupcakes << cupcake
  end
end
