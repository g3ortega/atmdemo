class User < ActiveRecord::Base
  has_one :account

  before_save :create_account
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :last_name, presence: true, length: { maximum: 50 }
  validates :first_name, presence: true, length: { maximum: 50 }

  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  # validates_length_of :last_name,

  private

  def create_account
    random_numer = rand(10000..99999)

    self.account = Account.new(amount: 1500, number: random_numer)
  end

end
