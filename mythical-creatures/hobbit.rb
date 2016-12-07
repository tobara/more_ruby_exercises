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
    @adult = @age >= 33 ? true : false
  end

  def old?
    @old = @age >= 101 ? true : false
  end

  def has_ring?
    @has_ring = @name == 'Frodo' ? true : false
  end

  def is_short?
    true
  end
end
