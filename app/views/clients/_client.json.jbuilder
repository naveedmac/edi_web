json.extract! client, :id, :name, :address, :city, :postal_code, :email, :ip_address, :ftp_user_name, :ftp_password, :ftp_inbound_path, :ftp_outbount_path, :load_time, :company_id, :created_at, :updated_at
json.url client_url(client, format: :json)
