require 'test_helper'

class PetTest < ActiveSupport::TestCase

	def setup
	  @user = User.create!(username: "Owen", email: "owen@example.com", password: "password")
	  @pet = Pet.create(name: "Doggo", animal: "Dog", user_id: "1")
	end

	test "Pet should have a user" do
	   @pet.user_id = nil
	   assert_not @pet.valid?
	end

	test "Pet should have name" do
	   @pet.name = ""
	   assert_not @pet.valid?
	end
	
	test "Pet should have animal type" do
	   @pet.animal = ""
	   assert_not @pet.valid?
	end
=begin
	test "Pet's user_id should be a number" do
	   assert_kind_of(int, @pet.user_id,msg = nil)
	end
=end
	test "Pet's name shouldn't be more than 50 characters" do
	   @pet.name = "a" * 51
	   assert_not @pet.valid?
	end

	test "Pet's type shouldn't be more than 50 characters" do
	   @pet.animal = "a" * 51
	   assert_not @pet.valid?
	end

end
