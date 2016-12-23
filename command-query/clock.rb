class Clock

  def initialize
    @time = 6
  end

  def time
    @time
  end

  def wait
    check_time
    @time = @time.next
  end

  def check_time
    @time == 12 ? @time = 0 : @time
  end
end
