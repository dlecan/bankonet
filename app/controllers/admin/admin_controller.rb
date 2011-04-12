module Admin

  # Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
  # Author: Philippe Guégan (mailto:pguegan@sqli.com)
  #
  class AdminController < ApplicationController
  
    before_filter :authenticate_manager!, :except => [:sign_in, :sign_up]
  
  end

end