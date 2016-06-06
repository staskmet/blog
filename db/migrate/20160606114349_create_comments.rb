class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.references :post, index: true, foreign_key: true
      t.integer :user_id

      t.timestamps null: false
    end
    add_column :posts, :comments_count, :integer, null: false, default: 0
  end
end
