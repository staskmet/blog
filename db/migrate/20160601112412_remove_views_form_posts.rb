class RemoveViewsFormPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :views, :integer
  end
end
