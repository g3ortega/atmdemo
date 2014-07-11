require 'rails_helper'

describe "transactions/new" do
  include Devise::TestHelpers

  before (:each) do
    @user = FactoryGirl.create(:user)
    @transaction = Transaction.new
    sign_in @user
  end

  it "tiene un formulario para transacciones" do
      render
      expect(rendered).to have_selector('form#new_transaction')
  end

end

