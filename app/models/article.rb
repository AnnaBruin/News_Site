class Article < ApplicationRecord
    include Visible
    has_rich_text :body

    mount_uploader :image, ImageUploader

    has_many :taggings, dependent: :destroy
    has_many :tags, through: :taggings

    validates :title, :summary, presence: true
    validates :body, length: { minimum: 10 }

    def all_tags
        self.tags.map(&:name).join(', ')
    end
  
    def all_tags=(names)
        self.tags = names.split(',').map do |name|
            Tag.where(name: name.strip).first_or_create!
        end
    end
end
