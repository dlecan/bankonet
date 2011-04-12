# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
# ---
# A customer of Bankonet. To access Bankonet, a customer will be requested to sign in by providing his 
# username and password.
#
# In Bankonet, a customer is only identified with his technical id, or his email.
# 
# Every customer is created and can be modified by any manager.
# 
# Such a customer is able to:
# - edit his own profile;
# - edit the description of each of his accounts;
# - list all operations on any of his accounts, or all of them;
# - create transfer on his own accounts;
# - list all transfers that was created on any of his accounts;
# - list all operations on any of his accounts, or all of them;
# - show or print a statement, displaying his profile, accounts, pending operations and transfers.
# 
#--
# TODO This class will have to be renamed "Customer" in next version.
#
class User < ActiveRecord::Base

    has_many :accounts, :dependent => :destroy
    has_many :operations, :through => :accounts, :order => "created_at desc"

    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

    attr_accessible :email, :password, :password_confirmation, :remember_me, :username,
        :firstname, :lastname, :phone, :street, :zip_code, :city, :country

    validates_presence_of :username, :firstname, :lastname, :phone

    before_save :capitalize_name

    def fullname
      "#{firstname} #{lastname}"
    end

    def transfers
      # Useless to join the targets, since both source and target necessarily belong to this customer
      Transfer.joins(:source).merge(Account.where(:user_id => id)).order("created_at desc")
    end

    private

    def capitalize_name
      # TODO Manage composed names (with spaces and '-')
      firstname.capitalize!
      lastname.capitalize!
    end

end
