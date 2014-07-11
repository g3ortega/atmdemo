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
  end
end
