class User < ActiveRecord::Base
  has_one :account
  before_save :create_account
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def create_account
    random_numer = rand(10000..99999)

    self.account = Account.new(amount: 1500, number: random_numer)
  end

end
