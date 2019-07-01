class Oystercard

attr_accessor :balance

BALANCE_LIMIT = 90

  def initialize(balance=0)
    @balance = balance
  end

  def top_up(amount)
    raise("amount exceeded, balance cannot be: #{amount + self.balance}. Balance limit is 90") if balance_check(amount)
    self.balance += amount
  end

  def balance_check(amount)
    amount + self.balance > BALANCE_LIMIT
  end

  def deduct(amount)
    self.balance -= amount
  end

  def touch_in
    @in_use = true
  end

  def touch_out
    @in_use = false
  end

  def in_journey?
    @in_use
  end
end
