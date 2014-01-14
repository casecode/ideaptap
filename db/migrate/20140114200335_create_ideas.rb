class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :short_desc
      t.text :long_desc
      t.string :idea_support_url
      t.string :category
      t.integer :coffer
      t.reference :user_id

      t.timestamps
    end
  end
end
