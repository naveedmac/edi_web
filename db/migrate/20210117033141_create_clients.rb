class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.text :city
      t.text :postal_code
      t.text :email
      t.text :ip_address
      t.string :ftp_user_name
      t.string :ftp_password
      t.text :ftp_inbound_path
      t.text :ftp_outbount_path
      t.string :load_time
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
