require 'test_helper'

class TransferTest < ActiveSupport::TestCase

  setup do
    @transfer = transfers(:default)
  end
  
  test "should not save transfer without an amount" do
    @transfer.amount = nil
    
    assert(!@transfer.save, "saved a transfer without an amount")
  end
  
  test "should not save transfer with a negative amount" do
    @transfer.amount = -100
    
    assert(!@transfer.save, "saved a transfer with a negative amount")
  end
  
  test "should not save transfer without a source account" do
    @transfer.source = nil
    
    assert(!@transfer.save, "saved a transfer without a source account")
  end
  
  test "should not save transfer without a target account" do
    @transfer.target = nil
    
    assert(!@transfer.save, "saved a transfer without a target account")
  end
  
  test "should not save transfer with same source and target account" do
    @transfer.target = accounts(:source)
    
    assert(!@transfer.save, "saved a transfer with same source and target account")
  end
  
  test "should create debit on source account when transfer is saved" do
    initial_balance = accounts(:source).balance
    
    assert(@transfer.save!, "nothing should prevent this transfer from being saved")
    # Trouver un moyen de recharger automatiquement les objets associés (on devrait directement pourvoir utiliser @transfer.source et @transfer.target)
    source = Account.find(@transfer.source.id)
    assert_equal(initial_balance - @transfer.amount, source.balance, "the balance of the source account should be decreased by #{@transfer.amount}")
    assert(!source.debits.empty?, "the source account should have debits")
    assert(source.credits.empty?, "the source account should not have credits")
  end
  
  test "should create credit on target account when transfer is saved" do
    initial_balance = accounts(:target).balance
    
    assert(@transfer.save!, "nothing should prevent this transfer from being saved")
    # Trouver un moyen de recharger automatiquement les objets associés (on devrait directement pourvoir utiliser @transfer.source et @transfer.target)
    target = Account.find(@transfer.target.id)
    assert_equal(initial_balance + @transfer.amount, target.balance, "the balance of the target account should be increased by #{@transfer.amount}")
    assert(target.debits.empty?, "the target account should not have debits")
    assert(!target.credits.empty?, "the target account should have credits")
  end
  
  test "should not modify the global balance of all accounts" do
    before_balance = Account.all.inject(0) { |sum, account| sum += account.balance}
    
    assert(@transfer.save, "nothing should prevent this transfer from being saved")
    after_balance = Account.all.inject(0) { |sum, account| sum += account.balance}
    assert_equal(before_balance, after_balance, "the global balance should not be modified")
  end
  
  test "should not save transfer with target account from different user" do
    @transfer.target = accounts(:foreign)
    
    assert(!@transfer.save, "saved a transfer with target account from different user")
  end
  
  test "should not save transfer with source account from different user" do
    @transfer.source = accounts(:foreign)
    
    assert(!@transfer.save, "saved a transfer with source account from different user")
  end
  
end
