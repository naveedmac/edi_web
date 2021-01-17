json.extract! company, :id, :name, :address, :city, :postal_code, :email, :created_at, :updated_at
json.url company_url(company, format: :json)
