require 'test_helper'

class AccountTest < ActiveSupport::TestCase

  setup do
    @account = accounts(:default)
  end

  test "should save an account with a default balance of zero" do
    @account.balance = nil
    assert(@account.save, "nothing should prevent this account from being saved")
    assert_equal(0, @account.balance, "the default balance should be zero")
  end

  test "should not save an account without a description" do
    @account.description = ""
    assert(!@account.save, "saved an account without a description")

    @account.description = nil
    assert(!@account.save, "saved an account without a description")
  end
  
  test "should not save an account without a user" do
    @account.user = nil
    assert(!@account.save, "saved an account without a user")
  end

end
