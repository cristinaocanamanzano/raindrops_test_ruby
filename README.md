Raindrops Tech Test in Ruby
==================
This is my proposed solution for the Raindrops tech test in Ruby.

What is the program about?
-------
This is a program where the user can input a number and, depending on the number, the output will differ:
- If the number is divisible by 3, the output will be 'Pling'
- If the number is divisible by 5, the output will be 'Plang'
- If the number is divisible by 7, the output will be 'Plong'
- If the number is not divisible by any of the numbers mentioned above, the output will be the same number

Technologies used
-------
- Ruby
- RSpec for testing
- Simplecov for test coverage
- Rubocop as a linter

Setup
-------
1. Download this repository and navigate to it in the command line
2. Run 'bundle' to install the gems

How to run the tests
-------
1. Navigate to this repository in the command line
2. Run 'rspec'

How to use it
-------
1. Navigate to this repository in the command line
2. Run 'irb'
3. Require the file ('require "./lib/raindrops.rb"')
4. Create an instance of the class ('Raindrops.new')
5. Use the method "print_result" with your desired input number
