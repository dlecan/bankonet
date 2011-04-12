# Bankonet on Rails. Copyright (c) 2011 SQLI[www.sqli.com] <br />
# Author: Philippe Guégan (mailto:pguegan@sqli.com)
# ---
# A transfer is an amount which is debited from one Account (the source account) and credited
# to another Account (the target account). Therefore, a transfer is made of two basic operations:
# a credit and a debit. The creation of a transfer implies the creation of a Debit on the source
# account, and a Credit on the target account.
#
# Of course, the source Account must be distinct from the target Account.
#
# A Customer is only able to create transfers on his own accounts. That means, he cannot
# transfer money from accounts that do not belong to him. In this case, the global balance
# of all the customer accounts remains unchanged.
#
# However, a Manager has more privileges. He can create transfers on cross-cutomer accounts.
#
# Although a transfer may be seen like an operation, technically it is not. It is a composition
# of two separate operations: a Debit and a Credit.
#
class Transfer < ActiveRecord::Base

  default_scope :order => "created_at desc"

  include ActiveModel::Validations

  class TransferValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      if record.source_id? and record.target_id?
        source = Account.find(record.source_id)
        target = Account.find(record.target_id)
        record.errors[attribute] << I18n.t("transfer.error.same_source_and_target") if source.id == target.id
        record.errors[attribute] << I18n.t("transfer.error.inconsistent_customer") unless source.user_id == target.user_id
      end
    end
  end

  belongs_to :source, :class_name => "Account"
  belongs_to :target, :class_name => "Account"

  validates_presence_of :amount, :source, :target
  validates_numericality_of :amount, :greater_than => 0, :allow_nil => true
  validates :source, :transfer => true

  before_save :create_operations

  def user
    # Since both source and target accounts belong to the same customer,
    # we arbitrarily choose the source account to retrieve the customer
    source.user
  end

  private

  def create_operations
    source.debits.create(:amount => amount, :description => I18n.t("model.transfer_to", :account => target.description))
    target.credits.create(:amount => amount, :description => I18n.t("model.transfer_from", :account => source.description))
  end

end