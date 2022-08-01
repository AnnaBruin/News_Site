class Article < ApplicationRecord
    include Visible
    has_rich_text :body
    validates :title, :summary, presence: true
    validates :body, length: { minimum: 10 }
end
