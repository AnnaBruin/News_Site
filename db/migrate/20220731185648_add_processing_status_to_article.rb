class AddProcessingStatusToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :processing_status, :string
  end
end
