require 'rails_helper'

RSpec.describe "transactions/edit", :type => :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :amount => 1.5,
      :concept => "MyString",
      :account_id => 1
    ))
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(@transaction), "post" do

      assert_select "input#transaction_amount[name=?]", "transaction[amount]"

      assert_select "input#transaction_concept[name=?]", "transaction[concept]"

      assert_select "input#transaction_account_id[name=?]", "transaction[account_id]"
    end
  end
end
