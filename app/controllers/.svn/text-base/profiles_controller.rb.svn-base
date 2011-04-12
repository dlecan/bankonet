# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
#
class ProfilesController < BaseController
  
  def edit
    @profile = current_user
  end
  
  def update
    @profile = current_user
    if @profile.update_with_password(params[:profile])
      redirect_to root_url, :notice => t("profile.success.update")
    else
      render :action => :edit
    end
  end
  
end
