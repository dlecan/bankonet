# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
#
class ApplicationController < ActionController::Base

  protect_from_forgery
  
  before_filter :set_locale
  
  layout :layout
  
  private
    
  def set_locale
    I18n.locale = params[:locale]
  end
  
  def default_url_options(options={})
    { :locale => I18n.locale }
  end
  
  def layout
    if request.fullpath.match(/\/.*\/(admin|managers)(\/.*)*/)
      if manager_signed_in?
        "admin/application"
      else
        "admin/sign_in"
      end
    else
      if user_signed_in? 
        "application"
      else
        "sign_in"
      end
    end
  end
  
end
