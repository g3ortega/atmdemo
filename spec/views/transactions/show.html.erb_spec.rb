require 'rails_helper'

RSpec.describe "transactions/show", :type => :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :amount => 1.5,
      :concept => "Concept",
      :account_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
  end
end
