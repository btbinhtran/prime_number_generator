require 'prime'

class PrimeNumberGenerator
  def is_positive_int?(integer)
    integer.is_a?(Integer) and integer > 0
  end

  # assumes param is an integer
  def is_prime?(integer)
    integer.prime?
  end

  # returns a list of prime numbers
  def generate(starting_value, ending_value)
  end
end