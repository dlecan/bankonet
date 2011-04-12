# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
#
class AccountsController < BaseController

  def index
    @accounts = current_user.accounts
  end

  def show
    @account = current_user.accounts.find(params[:id])
    @operations = @account.operations.paginate :page => params[:page], :per_page => 15
  end

  def edit
    @account = current_user.accounts.find(params[:id])
  end

  def update
    @account = current_user.accounts.find(params[:id])
    if @account.update_attributes(params[:account])
      redirect_to @account, :notice => t("account.success.update")
    else
      render :action => :edit
    end
  end

end
