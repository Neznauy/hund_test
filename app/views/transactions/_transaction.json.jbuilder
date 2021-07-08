json.extract! transaction, :id, :merchant_id, :customer_id, :amount, :currency, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
