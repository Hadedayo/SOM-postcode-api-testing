# SOM-postcode-api-testing

Built a test framework using service object models to test a postcode API(Application Programming Interface).
This is a boiler plate that can be used and referenced for other projects involving API testing. It includes two services, one for data relating to the API call for a single postcode, and the other returns data for multiple postcodes. There are tests to verify various data formats of the postcode and several methods that extract the data and how the service classes are instantiated as part of the superclass.

## Installing the Repository
To access this repository, clone using HTTPS by copying the HTTPS link and running 'git clone <i>insert https link here'

##  Running RSpec
RSpec is a test driven development tool written in Ruby to test Ruby code.
Install RSpec and run rspec --init to set up your project to use RSpec. Run rspec command from your project directory. RSpec will look inside the spec subdirectory for files named array_spec.rb and hash_spec.rb and run them. RSpec gives a detailed report displaying which spec failed, the line of code where the error occured, and a description of the failure.

RSpec relies on the repetition of a very short development cycle, it includes;

1. Red - Write an initially failing automated test case
2. Green - Make the test work
3. Refactor - Eliminate all of the duplication created in merely getting the test to work
