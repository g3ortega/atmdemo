json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :amount, :concept, :account_id
  json.url transaction_url(transaction, format: :json)
end
