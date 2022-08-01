class AddEditCommentToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :edit_comment, :text
  end
end
