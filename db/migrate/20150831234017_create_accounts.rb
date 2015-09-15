class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :account_type
      t.text :description

      t.timestamps null: false
    end
  end
end
