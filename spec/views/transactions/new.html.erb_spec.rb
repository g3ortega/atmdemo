require 'rails_helper'

RSpec.describe "transactions/new", :type => :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      :amount => 1.5,
      :concept => "MyString",
      :account_id => 1
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input#transaction_amount[name=?]", "transaction[amount]"

      assert_select "input#transaction_concept[name=?]", "transaction[concept]"

      assert_select "input#transaction_account_id[name=?]", "transaction[account_id]"
    end
  end
end
