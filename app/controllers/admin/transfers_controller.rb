module Admin

  # Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
  # Author: Philippe Guégan (mailto:pguegan@sqli.com)
  #
  class TransfersController < AdminController

  def index
    @user = User.find(params[:user_id])
    @transfers = @user.transfers.paginate :page => params[:page], :per_page => 15
  end

  def show
    @transfer = Transfer.find(params[:id])
    @user = @transfer.user
  end

  def new
    @user = User.find(params[:user_id])
    @transfer = Transfer.new
  end

  def create
    @user = User.find(params[:user_id])
    @transfer = Transfer.new(params[:transfer])
    if @transfer.save
      redirect_to(admin_user_transfers_url(@user), :notice => 'Transfer was successfully created.')
    else
      render :action => "new"
    end
  end
  
  end

end
