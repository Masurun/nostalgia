class PostTagRelation < ApplicationRecord
  belongs_to :post
  belongs_to :tag
  has_many_attached :images
end
