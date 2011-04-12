# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
#
class TransfersController < BaseController

  def index
    @transfers = current_user.transfers.paginate :page => params[:page], :per_page => 15
  end

  def show
    @transfer = current_user.transfers.find(params[:id])
  end

  def new
    @transfer = Transfer.new
  end

  def create
    @transfer = Transfer.new(params[:transfer])
    if @transfer.save
      redirect_to(@transfer, :notice => t("transfer.success.create"))
    else
      render :action => :new
    end
  end

end
