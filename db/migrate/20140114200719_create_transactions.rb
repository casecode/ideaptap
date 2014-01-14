class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.references :user
      t.references :idea

      t.timestamps
    end
  end
end
