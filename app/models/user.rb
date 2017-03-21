class User < ActiveRecord::Base
  create_table :users do |t|
    t.string :email, null: false
    t.string :password_hash, null: false
    t.string :delivery_address
    t.string :billing_address
    t.string :phone_number

    t.timestamps
  end

end
