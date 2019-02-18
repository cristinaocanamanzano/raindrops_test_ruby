# - if factor of 3, output 'Pling'
# - if factor of 5, output 'Plang'
# - if factor of 7, output 'Plong'

class Raindrops
  def print_result(input_number)
    print 'Pling' if (input_number % 3).zero?
    print input_number unless (input_number % 3).zero?
  end
end
