class ChangeViewsToPosts < ActiveRecord::Migration
  def change
    # change_column_null :posts, :views, false
    add_column :posts, :views, :integer, default: 0
  end
end
