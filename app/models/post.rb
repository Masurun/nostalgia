class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images,dependent: :destroy
  has_many :post_tag_relations,dependent: :destroy
  has_many :tags, through: :post_tag_relations,dependent: :destroy
  
  with_options presence: true do
  validates :images
  end
end
