class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :merchant_id
      t.integer :customer_id
      t.float :amount
      t.string :currency

      t.timestamps
    end
  end
end
