require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
  @user = User.create!(username: "Matt", email: "matt@example.com",
                        password: "password", password_confirmation: "password")
  end

  test "should reject and invalid edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), user:{username: " ", email: "matt@example.com"}
    assert_template 'users/edit'
  end

  test "accept valid signup" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), user:{username: "matt1", email: "matt1@example.com"}
    assert_redirected_to @user
    assert_not flash.empty?
    @user.reload
    assert_match "matt1", @user.username
    assert_match "matt1@example.com", @user.email
  end
end
