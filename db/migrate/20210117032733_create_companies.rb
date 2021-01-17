class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.text :city
      t.text :postal_code
      t.text :email

      t.timestamps
    end
  end
end
