require 'rails_helper'

RSpec.describe Transaction, :type => :model do
  before { @user = User.new(first_name: "Example", last_name: "User", email: "user@example.com", password: "12345678") }
  subject { @user }
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:password)}
  it { should respond_to(:email) }

  it { should be_valid }

  describe "cuando el primer nombre no está presente" do
    before { @user.first_name = " " }
    it { should_not be_valid }
  end

  describe "cuando el apellido no está presente" do
    before { @user.last_name = " " }
    it { should_not be_valid }
  end

  describe "cuando el primer nombre o el apellido es demasiado largo" do
    before { @user.first_name = "a" * 51 }
    before { @user.last_name = "a" * 51}
    it { should_not be_valid }
  end

  describe "cuando el usuario es inválido" do
    it "deberia ser inválido" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
      end
    end
  end

  describe "cuando el correo es válido" do
    it "deberia ser válido" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end
    end
  end

  describe "cuando un correo ya ha sido tomado" do
    before do
      usuario_con_mismo_correo = @user.dup
      usuario_con_mismo_correo.save
    end
    it { should_not be_valid }
  end

end
