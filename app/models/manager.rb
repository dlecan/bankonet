# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
# ---
# A manager of Bankonet. To access the Bankonet Administration application, a manager will be requested
# to sign in by providing his username and password. However, managers are not allowed to access 
# Bankonet standard application, as it is reserved to Bankonet customers.
#
# Every manager is able to create, edit or delete any customers profiles and accounts descriptions. He is
# also allowed to transfer money between accounts from different customers, or create any operation
# such as debitting or crediting a customer account.
#
# A manager cannot create or access other managers profiles.
#
class Manager < ActiveRecord::Base

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :firstname, :lastname
  
  validates_presence_of :username, :firstname, :lastname

  def fullname
    "#{firstname} #{lastname}"
  end

end