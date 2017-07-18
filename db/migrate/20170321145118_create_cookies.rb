class CreateCookies < ActiveRecord::Migration
  def change
    create_table :cookies do |t|
      t.string :flavor
    end
  end
end
