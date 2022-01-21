class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :body
      t.string :post_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
