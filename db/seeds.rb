# coding: utf-8

Manager.delete_all
User.delete_all
Account.delete_all
Operation.delete_all
Transfer.delete_all

Manager.create(
    :username => "admin",
    :firstname => "John",
    :lastname => "Appleseed",
    :email => "john.appleseed@bankonet.com",
    :password => "bankonet"
)

user = User.create(
    :username => "pguegan", 
    :firstname => "Philippe", 
    :lastname => "Guégan", 
    :phone => "02 40 48 67 78", 
    :email => "philippe.guegan@bankonet.com", 
    :password => "bankonet",
    :street => "2 rue du Pin",
    :zip_code => "44300",
    :city => "Nantes",
    :country => "France"
)

check_account = user.accounts.create(
    :description => "Check Account",
    :balance => 100
)
common_account = user.accounts.create(
    :description => "Common Account",
    :balance => 250
)
deposit_account = user.accounts.create(
    :description => "Deposit Account",
    :balance => 7500
)
reserve_account = user.accounts.create(
    :description => "Reserve Account",
    :balance => 500
)

check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
Transfer.create(
    :source => check_account,
    :target => common_account,
    :amount => 50
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 43,
    :description => "Restaurant"
)
common_account.debits.create(
    :amount => 150,
    :description => "Ikea"
)
Transfer.create(
    :source => reserve_account,
    :target => common_account,
    :amount => 1000
)
common_account.debits.create(
    :amount => 700,
    :description => "Car Loan"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 10,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 60,
    :description => "Gas Station"
)
check_account.debits.create(
    :amount => 32.70,
    :description => "Restaurant"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
check_account.debits.create(
    :amount => 40,
    :description => "Cinema"
)
check_account.debits.create(
    :amount => 18.50,
    :description => "Bar"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
Transfer.create(
    :source => check_account,
    :target => deposit_account,
    :amount => 100
)
check_account.debits.create(
    :amount => 40,
    :description => "Gas Station"
)
Transfer.create(
    :source => check_account,
    :target => reserve_account,
    :amount => 2500
)
check_account.debits.create(
    :amount => 100,
    :description => "ATM withdrawal"
)
check_account.credits.create(
    :amount => 150,
    :description => "Check"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 9.90,
    :description => "Cinema"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
Transfer.create(
    :source => check_account,
    :target => common_account,
    :amount => 50
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 43,
    :description => "Restaurant"
)
common_account.debits.create(
    :amount => 150,
    :description => "Ikea"
)
Transfer.create(
    :source => reserve_account,
    :target => common_account,
    :amount => 1000
)
common_account.debits.create(
    :amount => 700,
    :description => "Car Loan"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 10,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 60,
    :description => "Gas Station"
)
check_account.debits.create(
    :amount => 32.70,
    :description => "Restaurant"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
check_account.debits.create(
    :amount => 40,
    :description => "Cinema"
)
check_account.debits.create(
    :amount => 18.50,
    :description => "Bar"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
Transfer.create(
    :source => check_account,
    :target => deposit_account,
    :amount => 100
)
check_account.debits.create(
    :amount => 40,
    :description => "Gas Station"
)
Transfer.create(
    :source => check_account,
    :target => reserve_account,
    :amount => 2500
)
check_account.debits.create(
    :amount => 100,
    :description => "ATM withdrawal"
)
check_account.credits.create(
    :amount => 150,
    :description => "Check"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 9.90,
    :description => "Cinema"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
Transfer.create(
    :source => check_account,
    :target => common_account,
    :amount => 50
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 43,
    :description => "Restaurant"
)
common_account.debits.create(
    :amount => 150,
    :description => "Ikea"
)
Transfer.create(
    :source => reserve_account,
    :target => common_account,
    :amount => 1000
)
common_account.debits.create(
    :amount => 700,
    :description => "Car Loan"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 10,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 60,
    :description => "Gas Station"
)
check_account.debits.create(
    :amount => 32.70,
    :description => "Restaurant"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
check_account.debits.create(
    :amount => 40,
    :description => "Cinema"
)
check_account.debits.create(
    :amount => 18.50,
    :description => "Bar"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
Transfer.create(
    :source => check_account,
    :target => deposit_account,
    :amount => 100
)
check_account.debits.create(
    :amount => 40,
    :description => "Gas Station"
)
Transfer.create(
    :source => check_account,
    :target => reserve_account,
    :amount => 2500
)
check_account.debits.create(
    :amount => 100,
    :description => "ATM withdrawal"
)
check_account.credits.create(
    :amount => 150,
    :description => "Check"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 9.90,
    :description => "Cinema"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
Transfer.create(
    :source => check_account,
    :target => common_account,
    :amount => 50
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 43,
    :description => "Restaurant"
)
common_account.debits.create(
    :amount => 150,
    :description => "Ikea"
)
Transfer.create(
    :source => reserve_account,
    :target => common_account,
    :amount => 1000
)
common_account.debits.create(
    :amount => 700,
    :description => "Car Loan"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 10,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 60,
    :description => "Gas Station"
)
check_account.debits.create(
    :amount => 32.70,
    :description => "Restaurant"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
check_account.debits.create(
    :amount => 40,
    :description => "Cinema"
)
check_account.debits.create(
    :amount => 18.50,
    :description => "Bar"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
Transfer.create(
    :source => check_account,
    :target => deposit_account,
    :amount => 100
)
check_account.debits.create(
    :amount => 40,
    :description => "Gas Station"
)
Transfer.create(
    :source => check_account,
    :target => reserve_account,
    :amount => 2500
)
check_account.debits.create(
    :amount => 100,
    :description => "ATM withdrawal"
)
check_account.credits.create(
    :amount => 150,
    :description => "Check"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 9.90,
    :description => "Cinema"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
Transfer.create(
    :source => check_account,
    :target => common_account,
    :amount => 50
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 43,
    :description => "Restaurant"
)
common_account.debits.create(
    :amount => 150,
    :description => "Ikea"
)
Transfer.create(
    :source => reserve_account,
    :target => common_account,
    :amount => 1000
)
common_account.debits.create(
    :amount => 700,
    :description => "Car Loan"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 10,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 60,
    :description => "Gas Station"
)
check_account.debits.create(
    :amount => 32.70,
    :description => "Restaurant"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
check_account.debits.create(
    :amount => 40,
    :description => "Cinema"
)
check_account.debits.create(
    :amount => 18.50,
    :description => "Bar"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
Transfer.create(
    :source => check_account,
    :target => deposit_account,
    :amount => 100
)
check_account.debits.create(
    :amount => 40,
    :description => "Gas Station"
)
Transfer.create(
    :source => check_account,
    :target => reserve_account,
    :amount => 2500
)
check_account.debits.create(
    :amount => 100,
    :description => "ATM withdrawal"
)
check_account.credits.create(
    :amount => 150,
    :description => "Check"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 9.90,
    :description => "Cinema"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
Transfer.create(
    :source => check_account,
    :target => common_account,
    :amount => 50
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 43,
    :description => "Restaurant"
)
common_account.debits.create(
    :amount => 150,
    :description => "Ikea"
)
Transfer.create(
    :source => reserve_account,
    :target => common_account,
    :amount => 1000
)
common_account.debits.create(
    :amount => 700,
    :description => "Car Loan"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 10,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 60,
    :description => "Gas Station"
)
check_account.debits.create(
    :amount => 32.70,
    :description => "Restaurant"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
check_account.debits.create(
    :amount => 40,
    :description => "Cinema"
)
check_account.debits.create(
    :amount => 18.50,
    :description => "Bar"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
Transfer.create(
    :source => check_account,
    :target => deposit_account,
    :amount => 100
)
check_account.debits.create(
    :amount => 40,
    :description => "Gas Station"
)
Transfer.create(
    :source => check_account,
    :target => reserve_account,
    :amount => 2500
)
check_account.debits.create(
    :amount => 100,
    :description => "ATM withdrawal"
)
check_account.credits.create(
    :amount => 150,
    :description => "Check"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 9.90,
    :description => "Cinema"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
Transfer.create(
    :source => check_account,
    :target => common_account,
    :amount => 50
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 43,
    :description => "Restaurant"
)
common_account.debits.create(
    :amount => 150,
    :description => "Ikea"
)
Transfer.create(
    :source => reserve_account,
    :target => common_account,
    :amount => 1000
)
common_account.debits.create(
    :amount => 700,
    :description => "Car Loan"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 10,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 60,
    :description => "Gas Station"
)
check_account.debits.create(
    :amount => 32.70,
    :description => "Restaurant"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
check_account.debits.create(
    :amount => 40,
    :description => "Cinema"
)
check_account.debits.create(
    :amount => 18.50,
    :description => "Bar"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
Transfer.create(
    :source => check_account,
    :target => deposit_account,
    :amount => 100
)
check_account.debits.create(
    :amount => 40,
    :description => "Gas Station"
)
Transfer.create(
    :source => check_account,
    :target => reserve_account,
    :amount => 2500
)
check_account.debits.create(
    :amount => 100,
    :description => "ATM withdrawal"
)
check_account.credits.create(
    :amount => 150,
    :description => "Check"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 9.90,
    :description => "Cinema"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
Transfer.create(
    :source => check_account,
    :target => common_account,
    :amount => 50
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 43,
    :description => "Restaurant"
)
common_account.debits.create(
    :amount => 150,
    :description => "Ikea"
)
Transfer.create(
    :source => reserve_account,
    :target => common_account,
    :amount => 1000
)
common_account.debits.create(
    :amount => 700,
    :description => "Car Loan"
)
check_account.debits.create(
    :amount => 40,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 10,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 20,
    :description => "ATM withdrawal"
)
check_account.debits.create(
    :amount => 60,
    :description => "Gas Station"
)
check_account.debits.create(
    :amount => 32.70,
    :description => "Restaurant"
)
check_account.credits.create(
    :amount => 2000,
    :description => "Salary"
)
check_account.debits.create(
    :amount => 40,
    :description => "Cinema"
)
check_account.debits.create(
    :amount => 18.50,
    :description => "Bar"
)

# Random users, accounts and operations

firstnames = %w(Marilyn Martha Laura Christopher William Timothy Denise William Karen Patricia Sandra Deborah Frank Raymond Steve Thomas Larry Brenda Frank Lawrence Thomas David Laura Kimberly)
lastnames = %w(Gonzales Barnes Diaz Carter Roberts Allen Carter Simmons Ramirez Martinez Richardson Jones Morris Robinson Murphy Bailey Peterson Miller Carter Russell Washington Gonzales Robinson Cox)
streets = ["Amber Shadow Glade", "Colonial Lake Avenue", "Grand Goose Round", "Little Deer Pike", "Happy Beacon Chase", "Little Feather Crest", "Middle Crow Run", "Shady Elm Dale", "Lone Peach Bayou", "Bright Fox Orchard", "Golden Crow Villa", "Lone Mountain Gardens", "Lost Cottage Place", "Wishing Turtle Swale", "Orange Beacon Court", "Rustic Pine Bluff", "Lazy Peach Drive", "Happy Holly Trek", "Small Gate Place", "Happy Nectar Nook", "Broad Sky Meadow", "Sandy Embers Jetty", "Amber Cider Journey", "Island Trail"]
cities = ["Norway View", "Manswich Point", "Shakermeadow", "Richway", "Harrisvania", "Kingsmore", "Hartton", "Richville", "Harrising Farm", "Stonehart", "Maplewich Junction", "Kenthart", "Kingsmore", "Riverway", "Mount Perrysway", "West Maplehart Cove", "Old Stillridge", "Centervale", "Palmville", "East Shakerbrook Falls", "Bellford Village", "Engledale", "Centervania Ridge", "Kenthart"]
countries = ["United States", "United Kingdom", "Mauritius", "United States", "United States", "New Zealand", "United States", "United States", "United Kingdom", "United States", "United States", "United States", "Jersey", "United Kingdom", "United Kingdom", "Mauritius", "United States", "New Zealand", "United Kingdom", "United Kingdom", "United States", "United States", "United States", "United States"]
credits = ["Salary", "Check", "Cash Deposit", "Interests"]
debits = ["ATM withdrawal", "Car Loan", "Bar", "Restaurant", "Cinema", "Gas Station", "Check", "Ikea"]
count = firstnames.length

(0..(count - 1)).each do |i|
  
  puts "Creating user #{firstnames[i]} #{lastnames[i]}... (#{i + 1} out of #{count})"
  user = User.create(
    :username => (firstnames[i][0] + lastnames[i]).downcase, 
    :firstname => firstnames[i],
    :lastname => lastnames[i],
    :phone => "(9" + rand(10).to_s + rand(10).to_s + ") 555-" + rand(10).to_s + rand(10).to_s + rand(10).to_s + rand(10).to_s,
    :email => firstnames[i].downcase + "." + lastnames[i].downcase + "@bankonet.com",
    :password => "bankonet",
    :street => rand(100).to_s + " " + streets[i],
    :zip_code => rand(10).to_s + rand(10).to_s + rand(10).to_s + rand(10).to_s + rand(10).to_s,
    :city => cities[i],
    :country => countries[i]
  )
  
  print "Creating accounts..."
  user.accounts.create(
      :description => "Check Account",
      :balance => rand * 1000
  )
  user.accounts.create(
      :description => "Common Account",
      :balance => rand * 1000
  )
  user.accounts.create(
      :description => "Deposit Account",
      :balance => rand * 1000
  )
  user.accounts.create(
      :description => "Reserve Account",
      :balance => rand * 1000
  )
  puts " Done."
  
  print "Creating operations..."
  user.accounts.each do |account|
    (0..rand(50)).each do |c|
      account.credits.create(
        :amount => rand * 2000,
        :description => credits[c % credits.length]
      )
    end
    (0..rand(50)).each do |d|
      account.debits.create(
        :amount => rand * 2000,
        :description => debits[d % debits.length]
      )
    end
  end
  puts " Done."
  
  print "Creating transfers..."
  (0..rand(50)).each do |t|
    Transfer.create(
      :source => user.accounts[t % user.accounts.length],
      :target => user.accounts[(t + 1) % user.accounts.length],
      :amount => rand * 500
    )
  end
  puts " Done."
  
end

# Random dates

print "Randomizing users sign up dates..."
User.all.each do |user|
  user.created_at = Time.now - rand(1).year - rand(11).months - rand(30).days - rand(23).hours
  user.save
end
puts " Done."

print "Randomizing operations dates... (this may take a while)"
Operation.all.each do |operation|
  operation.created_at = Time.now - rand(11).months - rand(30).days - rand(23).hours
  operation.save
end
puts " Done."

print "Randomizing transfers dates..."
Transfer.all.each do |transfer|
  transfer.created_at = Time.now - rand(11).months - rand(30).days - rand(23).hours
  transfer.save
end
puts " Done."

puts "Database successfuly seeded!"
puts "Created:"
puts " - #{Manager.count} manager"
puts " - #{User.count} users"
puts " - #{Account.count} accounts"
puts " - #{Operation.count} operations"
puts " - #{Transfer.count} transfers"