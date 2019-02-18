class Raindrops

  RULES = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def print_result(input_number)
    if not_divisible_by_rules? (input_number)
      print input_number
    else
      output_string(input_number)
    end
  end

  private

  def divisible_by?(input_number, divisor)
    (input_number % divisor).zero?
  end

  def not_divisible_by_rules?(input_number)
    valid_divisors = []
    RULES.each_key { |rules_number| valid_divisors << input_number if divisible_by?(input_number, rules_number) }
    valid_divisors.empty?
  end

  def output_string(input_number)
    RULES.each { |rules_number, string| print string if divisible_by?(input_number, rules_number) }
  end
end
