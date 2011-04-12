# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
#
class StatementsController < BaseController

  def show
    @user = current_user
    @accounts = @user.accounts

    respond_to do |format|
      format.html
      format.pdf { render :layout => false }
    end
  end

end
