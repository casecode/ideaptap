class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.references :user_id
      t.references :idea_id

      t.timestamps
    end
  end
end
