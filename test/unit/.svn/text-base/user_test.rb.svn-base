require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "should see its own transfers only" do
    user = users(:default)
    
    transfers = user.transfers
    assert(!transfers.empty?, "the user should have at least one transfer")
    user.transfers.each do |transfer|
      assert_equal(user, transfer.source.user, "the transfer should belongs to the user")
    end
  end

end
