class Record < ApplicationRecord
  has_many :record_tag_relations,dependent: :destroy
  has_many :tags, through: :record_tag_relations,dependent: :destroy
  belongs_to :user
end
