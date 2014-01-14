class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.reference :user_id
      t.reference :idea_id

      t.timestamps
    end
  end
end
