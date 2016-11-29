class Hobbit

  def initialize(name, disposition='homebody', age=0)
    @name = name
    @disposition = disposition
    @age = age
    @has_ring = false
  end

  def name
    @name
  end

  def age
    @age
  end

  def disposition
    @disposition
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @adult = case
    when @age >= 33
      then true
    when @age < 33
      then false
    end
    @adult
  end

  def old?
    @old = case
    when @age < 101
      then false
    when @age >= 101
      then true
    end
    @old
  end

  def has_ring?
    if @name == 'Frodo'
      @has_ring = true
    end
    @has_ring
  end

  def is_short?
    true
  end
end
