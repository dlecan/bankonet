# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
# ---
# An base class to represent any operation that can occurs on every account,
# such as a debit or a credit.
# 
# An operation is bound to only one account. Each operation has an amount, which is
# a decimal, with a scale of 2.
#
# Every subclass should implement the method +modify_account_balance+ to alter the
# balance of the bound account, according to the amount of the operation.
#
class Operation < ActiveRecord::Base

  belongs_to :account

  validates_presence_of :account, :description, :amount
  validates_numericality_of :amount, :allow_nil => true
  
  before_save :modify_account_balance
  
  def debit?
    is_a? Debit
  end
  
  def credit?
    is_a? Credit
  end
  
end
