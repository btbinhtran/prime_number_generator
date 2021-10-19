# Built With:
* Ruby 2.7.1
* RSpec 3.10

# Requirements (These are requirements I came up with):
* PNG-SRS-1: The software shall provide method to check if a number is prime.
* PNG-SRS-2: The software shall provide method to generate prime numbers from a starting value and ending value inclusive.
* PNG-SRS-3: The software shall display an error when trying to generate a list of prime numbers with a non-integer starting value.
* PNG-SRS-4: The software shall display an error when trying to generate a list of prime numbers with a non-positive starting value.
* PNG-SRS-5: The software shall display an error when trying to generate a list of prime numbers with a non-integer ending value.
* PNG-SRS-6: The software shall display an error when trying to generate a list of prime numbers with a non-positive ending value.
* PNG-SRS-7: The software shall be able to generate a list of prime numbers from a range of 1000000 numbers within 1 second.


# Installation:
1. Clone the repo
2. Install Gems
   ```sh
   bundle install
   ```
3. Run the tests
   ```sh
   rspec
   ```