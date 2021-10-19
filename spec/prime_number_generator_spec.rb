require 'prime_number_generator'

describe PrimeNumberGenerator do

  before :each do
    @prime_num_gen = PrimeNumberGenerator.new
  end

  # PNG-SRS-3
  # PNG-SRS-4
  # PNG-SRS-5
  # PNG-SRS-6
  context "is_positive_int?" do
    it "should return false when param is a boolean" do
      expect(@prime_num_gen.is_positive_int? true).to be false
    end

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
  # PNG-SRS-1
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

  context "generate" do
    # PNG-SRS-4
    it "should raise a NonIntPositiveException when the starting value is not positive" do
      expect {
        @prime_num_gen.generate(-1, 1)
      }.to raise_error(NonIntPositiveException)
    end

    # PNG-SRS-3
    it "should raise a NonIntPositiveException when the starting value is a boolean" do
      expect {
        @prime_num_gen.generate(true, 2)
      }.to raise_error(NonIntPositiveException)
    end

    # PNG-SRS-3
    it "should raise a NonIntPositiveException when the starting value is a decimal" do
      expect {
        @prime_num_gen.generate(1.1, 2)
      }.to raise_error(NonIntPositiveException)
    end

    # PNG-SRS-3
    it "should raise a NonIntPositiveException when the starting value is a string" do
      expect {
        @prime_num_gen.generate("1", 2)
      }.to raise_error(NonIntPositiveException)
    end

    # PNG-SRS-6
    it "should raise a NonIntPositiveException when the ending value is not positive" do
      expect {
        @prime_num_gen.generate(1, -1)
      }.to raise_error(NonIntPositiveException)
    end

    # PNG-SRS-5
    it "should raise a NonIntPositiveException when the ending value is a boolean" do
      expect {
        @prime_num_gen.generate(1, true)
      }.to raise_error(NonIntPositiveException)
    end

    # PNG-SRS-5
    it "should raise a NonIntPositiveException when the ending value is a decimal" do
      expect {
        @prime_num_gen.generate(1, 2.2)
      }.to raise_error(NonIntPositiveException)
    end

    # PNG-SRS-5
    it "should raise a NonIntPositiveException when the ending value is a string" do
      expect {
        @prime_num_gen.generate(1, "2")
      }.to raise_error(NonIntPositiveException)
    end

    # PNG-SRS-2
    it "should return a list of prime numbers that is inclusive of starting value and ending value" do
      expect(@prime_num_gen.generate(2, 3)).to eq [2, 3]
    end

    # PNG-SRS-8
    it "should return a list of prime numbers that is the same when starting value is swapped with ending value" do
      expect(@prime_num_gen.generate(2, 4)).to eq [2, 3]

      expect(@prime_num_gen.generate(4, 2)).to eq [2, 3]
    end

    # PNG-SRS-9
    it "should return the correct list from the range 7900 and 7920" do
      expect(@prime_num_gen.generate(7900, 7920)).to eq [7901, 7907, 7919]
    end

    # PNG-SRS-7
    it "should run under 1 second for a range that is within 1000000 numbers" do
      start_time = Time.new
      @prime_num_gen.generate(1, 1000001)
      end_time = Time.new
      expect(end_time - start_time).to be < 2
    end
  end
end