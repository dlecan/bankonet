# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
#
class HomeController < BaseController

  def index
    @accounts = current_user.accounts
    @operations = current_user.operations
    @transfers = current_user.transfers
  end

end
