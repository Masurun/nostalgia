class Tag < ApplicationRecord
  has_many :post_tag_relations
  has_many :posts, through: :post_tag_relations

  has_many :record_tag_relations
  has_many :records, through: :record_tag_relations
  

  has_many_attached :images
  validates :tag_name, uniqueness: true
end
