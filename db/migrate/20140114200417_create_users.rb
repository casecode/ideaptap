class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :admin
      t.integer :wallet
      t.reference :organization_id

      t.timestamps
    end
  end
end
