module Admin

  # Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
  # Author: Philippe Guégan (mailto:pguegan@sqli.com)
  #
  class CreditsController < AdminController
    
    include ActionView::Helpers::NumberHelper
    
    def new
      @account = Account.find(params[:account_id])
      @credit = @account.credits.new
      @user = @account.user
    end
    
    def create
      @account = Account.find(params[:account_id])
      @credit = @account.credits.new(params[:credit])
      @user = @account.user
      if @credit.save
        redirect_to admin_account_url(@account), :notice => t("credit.success.create", :amount => number_to_currency(@credit.amount))
      else
        render :action => :new
      end
    end
    
  end

end