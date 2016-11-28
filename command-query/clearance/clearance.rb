class Clearance

  def initialize
    @clearance = []
  end

  def best_deal
    unless @clearance.empty?
      find_percent_off
      @best_deal = @clearance.max { |i1, i2| i1.percent_off <=> i2.percent_off }
      @best_deal.name
    end
  end

  def find_percent_off
    @clearance.each {|item| item[:percent_off] = (item.discount * 100 / item.price) }
  end

  def <<(item)
    @clearance << item
  end
end
