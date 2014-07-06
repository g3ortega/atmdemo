require 'rails_helper'

RSpec.describe "transactions/index", :type => :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        :amount => 1.5,
        :concept => "Concept",
        :account_id => 1
      ),
      Transaction.create!(
        :amount => 1.5,
        :concept => "Concept",
        :account_id => 1
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Concept".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
