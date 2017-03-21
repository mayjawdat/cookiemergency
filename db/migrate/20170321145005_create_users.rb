class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string :first_name
    t.string :last_name
    t.string :email, null: false
    t.string :password_hash, null: false
    t.string :delivery_address
    t.string :billing_address
    t.string :phone_number
    t.references :orders

    t.timestamps
  end

  end
end
