class Appointments

  def initialize
    @appointments = Hash.new
    @n = 1
  end

  def earliest
    arrange_appts
    @appt_array.first
  end

  def at(time)
    add_appt(time)
    @appointments[:"t#{@n}"]
    @n += 1
  end

  def add_appt(time)
    @appointments[:"t#{@n}"] = time
  end

  def arrange_appts
    return @appt_array = @appointments.values.sort
  end
end
