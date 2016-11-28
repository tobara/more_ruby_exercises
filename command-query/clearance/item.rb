class Item < Struct.new(:name, :price, :discount, :percent_off)

  def initialize *args
    opts = args.last.is_a?(Hash) ? args.pop : Hash.new
    super *args
    opts.each_pair do |k, v|
      self.send "#{k}=", v
    end
  end
end
