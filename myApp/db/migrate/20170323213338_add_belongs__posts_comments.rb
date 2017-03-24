class AddBelongsPostsComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :post

  end
end
