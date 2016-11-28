class Children

  def initialize
    @children = []
  end

  def eldest
    unless @children.empty?
      @eldest = @children.max { |c1,c2| c1.age <=> c2.age }
      @eldest
    end
  end

  def <<(child)
    @children << child
  end
end
