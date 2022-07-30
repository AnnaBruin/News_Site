class Article < ApplicationRecord
    include Visible
    validates :title, :summary, presence: true
    validates :body, length: { minimum: 10 }
end
