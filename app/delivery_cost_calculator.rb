class DeliveryCostCalculator
  def initialize(rules)
    @rules = rules
  end

  def calculate(total_price)
    if total_price >= 90
      @rules[:free]
    elsif total_price >= 50
      @rules[:under_90]
    else
      @rules[:under_50]
    end
  end
end
