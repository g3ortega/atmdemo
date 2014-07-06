require 'rails_helper'

RSpec.describe "accounts/edit", :type => :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :user_id => 1,
      :amount => 1.5
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_user_id[name=?]", "account[user_id]"

      assert_select "input#account_amount[name=?]", "account[amount]"
    end
  end
end
