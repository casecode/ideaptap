class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.reference :user_id
      t.reference :idea_id

      t.timestamps
    end
  end
end
