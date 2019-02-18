# - if factor of 3, output 'Pling'
# - if factor of 5, output 'Plang'
# - if factor of 7, output 'Plong'

class Raindrops
  def print_result(input_number)
    print 'Pling' if (input_number % 3).zero?
    print 'Plang' if (input_number % 5).zero?
    print 'Plong' if (input_number % 7).zero?
    print input_number unless (input_number % 3).zero? || (input_number % 5).zero? || (input_number % 7).zero?
  end
end
