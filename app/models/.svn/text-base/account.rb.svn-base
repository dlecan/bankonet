# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
# ---
# A Customer bank Account.
#
class Account < ActiveRecord::Base
  
    belongs_to :user
    has_many :operations, :order => "created_at desc"
    has_many :debits
    has_many :credits
    
    attr_protected :balance

    validates_presence_of :description, :user
    validates_numericality_of :balance, :allow_nil => true
    
    before_save :default_balance
    
    private
    
    def default_balance
      self.balance = 0 unless self.balance?
    end
  
end
