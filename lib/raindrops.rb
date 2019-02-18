class Raindrops

  RULES = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def print_result(input_number)
    print 'Pling' if divisible_by?(input_number, 3)
    print 'Plang' if divisible_by?(input_number, 5)
    print 'Plong' if divisible_by?(input_number, 7)
    print input_number if not_divisible_by_rules?(input_number)
  end

  private

  def divisible_by?(input_number, divisor)
    (input_number % divisor).zero?
  end

  def not_divisible_by_rules?(input_number)
    divisors = []
    RULES.each_key { |rules_number| divisors << input_number if divisible_by?(input_number, rules_number) }
    divisors.empty?
  end
end
