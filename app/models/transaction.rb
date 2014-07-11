class Transaction < ActiveRecord::Base
  attr_accessor :account_number
  before_save :set_account_id

  belongs_to :account
  belongs_to :user


  def money_transfer
    if amount > user.account.amount
      false
    else
      self.user.account.amount -= self.amount
      self.user.account.save
      # user.account
      cuenta_destino = get_account
      cuenta_destino.amount += self.amount
      cuenta_destino.save
    end

  end

  protected

  def set_account_id
    account = Account.find_by_number(self.account_number)
    self.account = account
  end

  private

  def get_account
    Account.find_by_number(self.account_number)
  end


end
