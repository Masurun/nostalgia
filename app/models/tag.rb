class Tag < ApplicationRecord
  has_many :post_tag_relations,dependent: :destroy
  has_many :posts, through: :post_tag_relations,dependent: :destroy

  has_many :record_tag_relations,dependent: :destroy
  has_many :records, through: :record_tag_relations,dependent: :destroy
  

  has_many_attached :images,dependent: :destroy
  validates :tag_name, uniqueness: true
end
