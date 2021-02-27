class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :post_tag_relations
  has_many :tags, through: :post_tag_relations
  
  with_options presence: true do
  validates :content
  validates :title
  validates :images
  end
end
