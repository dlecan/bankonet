module Admin
  
  # Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
  # Author: Philippe Guégan (mailto:pguegan@sqli.com)
  #
  class ProfilesController < Admin::AdminController
  
    def edit
      @profile = current_manager
    end
  
    def update
      @profile = current_manager
      if @profile.update_with_password(params[:profile])
        redirect_to(admin_root_url, :notice => 'Your profile was successfully updated.')
      else
        render :action => "edit"
      end
    end
  
  end
  
end
