class AddUserPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :user, :string
  end
end
