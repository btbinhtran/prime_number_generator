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
    unless self.is_positive_int?(starting_value) and self.is_positive_int?(ending_value)
      raise NonIntPositiveException.new
    end

    if starting_value > ending_value
      temp = starting_value
      starting_value = ending_value
      ending_value = temp
    end

    prime_nums = []

    starting_value.upto(ending_value) do |number|
      if self.is_prime?(number)
        prime_nums << number
      end
    end

    prime_nums
  end
end

class NonIntPositiveException < StandardError
  def initialize()
    @exception_type = "custom"
    super("The parameters you passed have to be positive integers!")
  end
end