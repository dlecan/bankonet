require 'test_helper'

class OperationTest < ActiveSupport::TestCase

  test "should not save a debit without an amount" do
    @debit = operations(:debit)
    @debit.amount = nil
    
    assert(!@debit.save, "saved a debit without an amount")
  end

  test "should not save a credit without an amount" do
    @credit = operations(:credit)
    @credit.amount = nil
    
    assert(!@credit.save, "saved a credit without an amount")
  end
  
  test "a debit should be a Debit operation and not anything else" do
    @debit = operations(:debit)
    
    assert(@debit.debit?)
    assert(!@debit.credit?)
  end
  
  test "a credit should be a Credit operation and not anything else" do
    @credit = operations(:credit)
    
    assert(@credit.credit?)
    assert(!@credit.debit?)
  end

end
