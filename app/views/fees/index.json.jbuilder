json.array!(@fees) do |fee|
  json.extract! fee, :id, :fdate, :amount
  json.url fee_url(fee, format: :json)
end
