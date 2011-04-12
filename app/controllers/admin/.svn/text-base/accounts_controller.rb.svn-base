module Admin

  # Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
  # Author: Philippe Guégan (mailto:pguegan@sqli.com)
  #
  class AccountsController < AdminController

    def index
      @user = User.find(params[:user_id])
      @accounts = @user.accounts
    end
    
    def show
      @account = Account.find(params[:id])
      @user = @account.user
      @operations = @account.operations.paginate :page => params[:page], :per_page => 15
    end

    def new
      @user = User.find(params[:user_id])
      @account = @user.accounts.new
    end

    def create
      @user = User.find(params[:user_id])
      @account = @user.accounts.new(params[:account])
      if @account.save
        redirect_to admin_user_accounts_url(@user), :notice => t("account.success.create")
      else
        render :action => :new
      end
    end

    def edit
      @account = Account.find(params[:id])
      @user = @account.user
    end

    def update
      @account = Account.find(params[:id])
      @user = @account.user
      if @account.update_attributes(params[:account])
        redirect_to admin_user_accounts_url(@user), :notice => t("account.success.update")
      else
        render :action => :edit
      end
    end

    def destroy
      @account = Account.find(params[:id])
      @account.destroy
      redirect_to admin_user_accounts_url(@account.user)
    end
        
  end

end
