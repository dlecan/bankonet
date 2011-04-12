module Admin
  
  # Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
  # Author: Philippe Guégan (mailto:pguegan@sqli.com)
  #
  class DebitsController < AdminController
    
    include ActionView::Helpers::NumberHelper
    
    def new
      @account = Account.find(params[:account_id])
      @debit = @account.debits.new
      @user = @account.user
    end
    
    def create
      @account = Account.find(params[:account_id])
      @user = @account.user
      @debit = @account.debits.new(params[:debit])
      if @debit.save
        redirect_to admin_account_url(@account), :notice => t("debit.success.create", :amount => number_to_currency(@debit.amount))
      else
        render :action => :new
      end
    end
    
  end

end