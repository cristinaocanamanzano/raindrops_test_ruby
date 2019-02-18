# - if factor of 3, output 'Pling'
# - if factor of 5, output 'Plang'
# - if factor of 7, output 'Plong'

class Raindrops
  def print_result(input_number)
    print 'Pling' if divisible_by?(input_number, 3)
    print 'Plang' if divisible_by?(input_number, 5)
    print 'Plong' if divisible_by?(input_number, 7)
    print input_number unless divisible_by?(input_number, 3) || divisible_by?(input_number, 5) || divisible_by?(input_number, 7)
  end

  private

  def divisible_by?(input_number, divisor)
    (input_number % divisor).zero?
  end
end
