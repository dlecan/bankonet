# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
# ---
# A special type of Operation which is aimed at crediting an Account balance.
#
class Credit < Operation

  private
  
  def modify_account_balance
    account.balance += amount
    account.save
  end

end