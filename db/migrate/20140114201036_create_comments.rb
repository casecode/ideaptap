class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user_id
      t.references :idea_id

      t.timestamps
    end
  end
end
