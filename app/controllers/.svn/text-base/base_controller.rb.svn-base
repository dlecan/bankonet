# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
#
class BaseController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:sign_in, :sign_up]
  
end
