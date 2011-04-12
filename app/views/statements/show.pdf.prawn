pdf.text "Bankonet", :size => 26, :style => :bold, :align => :center
pdf.text t("statement.title.index"), :size => 18, :align => :center

pdf.text l(Time.now, :format => :long), :size => 10, :inline_format => true, :align => :right

pdf.move_down 30

pdf.text "<b>#{@user.fullname}</b>", :inline_format => true
pdf.text "<b>#{labelize "model.address"}</b> #{@user.street} #{@user.zip_code} #{@user.city} #{@user.country}", :inline_format => true
pdf.text "<b>#{labelize "model.phone"}</b> #{@user.phone}", :inline_format => true
pdf.text "<b>#{labelize "model.email"}</b> #{@user.email}", :inline_format => true

pdf.move_down 20

pdf.text t("statement.title.accounts_summary"), :size => 16, :style => :bold, :align => :center

pdf.move_down 10

headers = [[t("model.description").capitalize, t("model.balance").capitalize]]
data = @accounts.map do |account| 
  [
    account.description,
    number_to_currency(account.balance)
  ]
end

pdf.table(headers + data, :row_colors => ["d2e3ed", "ffffff"]) do |table|
  table.header = true
  # Assuming a width of 540
  table.column_widths = [390, 150]
end

pdf.move_down 20

pdf.text "Operations", :size => 16, :style => :bold, :align => :center

@accounts.each do |account|

  pdf.move_down 20

  pdf.text account.description, :size => 14
  
  headers = [["#", t("model.description").capitalize, t("model.date").capitalize, t("model.debit").capitalize, t("model.credit").capitalize]]
  data = account.operations.each_with_index.map do |operation, index| 
    [
      (index + 1).to_s,
      operation.description,
      l(operation.created_at, :format => :short),
      (number_to_currency(operation.amount) if operation.debit?),
      (number_to_currency(operation.amount) if operation.credit?)
    ]
  end
  
  pdf.font_size = 9
  pdf.table(headers + data, :row_colors => ["d2e3ed", "ffffff"]) do |table|
    table.header = true
    # Assuming a width of 540
    table.column_widths = [30, 210, 100, 100, 100]
  end
  
end