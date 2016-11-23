class Bag

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def candies
    @candies
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(type)
    candies.any? do |candy|
      candy.type == type
    end
  end

  def grab(piece_of_candy)
    candy_piece = candies.find { |candy| candy.type == piece_of_candy}
    candies.delete(candy_piece)
  end

  def take(amt)
    @candy = @candies.pop(amt)
  end
end
