class Wallet

  def initialize
    @cents = 0
  end

  def cents
    @cents
  end

  def <<(currency)
    get_amount(currency)
    @cents += @amt
  end

  def take(currency, currency_two = nil)
    get_amount(currency)
    @cents -= @amt
    @cents < 0 ? self << currency : @cents
    currency_two != nil ? get_amount(currency_two) && (@cents -= @amt) : @cents
    @cents < 0 ? self << currency_two : @cents
  end


  def get_amount(currency)
    case
      when currency == :penny then @amt = 1
      when currency == :nickel then @amt = 5
      when currency == :dime then @amt = 10
      when currency == :quarter then @amt = 25
      when currency == :dollar then @amt = 100
    end
    @amt
  end
end
