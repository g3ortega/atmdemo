class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :amount
      t.string :concept
      t.integer :account_id

      t.timestamps
    end
  end
end
