require 'prime_number_generator'

describe PrimeNumberGenerator do

  before :each do
    @prime_num_gen = PrimeNumberGenerator.new
  end

  context "is_positive_int?" do
    it "should return false when param is a decimal" do
      expect(@prime_num_gen.is_positive_int? 3.0).to be false
    end

    it "should return false when param is a string" do
      expect(@prime_num_gen.is_positive_int? "3").to be false
    end

    it "should return false when param is < 0" do
      expect(@prime_num_gen.is_positive_int? 0).to be false
    end

    it "should return true when param is an integer and greater than 0" do
      expect(@prime_num_gen.is_positive_int? 1).to be true
    end
  end

  # param is assumed to be of type integer
  context "is_prime?" do
    it "should return false when param is negative" do
      expect(@prime_num_gen.is_prime? -1).to be false
    end

    it "should return false when param is 0" do
      expect(@prime_num_gen.is_prime? 0).to be false
    end

    it "should return false when param is a positive non prime integer" do
      expect(@prime_num_gen.is_prime? 10).to be false
    end

    it "should return true when param is a positive prime integer" do
      expect(@prime_num_gen.is_prime? 3).to be true
    end
  end
end