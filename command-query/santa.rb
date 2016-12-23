require 'pry'
class Santa

  def initialize
    @fits = true
    @cookie_count = 0
  end

  def fits?
    cookie_count
    @fits
  end

  def eats_cookies
    @cookie_count += 1
  end

  def cookie_count
    @fits = @cookie_count <= 2 ? true : false
  end
end
