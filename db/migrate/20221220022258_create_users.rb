class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, index: { unique: true, name: 'unique_email' }
      t.string :password, null: false, limit: 8

      t.timestamps
    end
  end
end
