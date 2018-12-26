require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
   def setup
        @user = User.create!(username: "matt",
            email: "matt@example.com", password: "password") 
   end
   test "invalid login is rejected" do
     get login_path
     assert_template 'sessions/new'
     post login_path, session: {email: " ", password: " "}
     assert_template 'sessions/new'
     assert_not flash.empty?
    #  # after this fails we go to another route and there should not  be anoterh flash showing up
     get login_path
     assert flash.empty?
   end 

   test "valid login credentials accepted and being session" do
     get login_path
     assert_template 'sessions/new'
   end 
end