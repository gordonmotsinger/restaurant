#to use this file run the following in the console: rspec ./app/models/user_spec.rb

#path to file (user model for login) to test
require './app/models/user.rb'

#tell what to test(class Users), set this up before you start coding to do Test Driven Development (TDD).
describe User, '#pass' do 

    it "passes test when true" do
        user = User.new

        grade = user.pass(true)

        expect(grade).to be_truthy
    end

    it "fails when test false" do
        user=User.new
        grade=user.pass(false)
        expect(grade).to be_truthy
    end
end