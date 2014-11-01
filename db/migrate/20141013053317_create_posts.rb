class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :vote
      t.references :user, index: true

      t.timestamps
    end
  end
end
