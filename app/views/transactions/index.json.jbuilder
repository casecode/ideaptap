json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :user_id, :idea_id, :amount
  json.url transaction_url(transaction, format: :json)
end
