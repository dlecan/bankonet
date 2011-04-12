# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
#
class OperationsController < BaseController

  def index
    @operations = current_user.operations.paginate :page => params[:page], :per_page => 15
  end

end
