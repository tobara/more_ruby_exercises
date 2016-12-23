class RollCall

  def initialize
    @class = []
  end

  def longest_name
   sort_name_length
   @class.last
  end

  def <<(classmate)
    @class << classmate
  end

  def sort_name_length
    @class.sort_by! { |name| name.length }
  end
end
