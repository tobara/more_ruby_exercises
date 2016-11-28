class Catalogue

  def initialize
    @catalogue = []
  end

  def cheapest
     unless @catalogue.empty?
       @cheapest = @catalogue.min { |p1,p2| p1.price <=> p2.price }
       @cheapest.product
     end
  end

  def <<(product)
    @catalogue << product
  end
end
