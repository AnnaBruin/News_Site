class Article < ApplicationRecord
    include Visible
    has_rich_text :body

    mount_uploader :image, ImageUploader

    validates :title, :summary, presence: true
    validates :body, length: { minimum: 10 }
end
