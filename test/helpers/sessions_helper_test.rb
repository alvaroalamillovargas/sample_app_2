require 'test_helper'

class SessionsHelperTest < ActionView::TestCase

  def setup
    @user = users(:alvaro)
    remember(@user)
  end

 test "current_user returns right user when session is set" do
   log_in @user
   assert_equal @user, current_user
   assert is_logged_in?
 end

 test "current_user returns no user when session is nil" do
   assert_nil current_user
   assert !is_logged_in?
 end
end