class Record < ApplicationRecord
  has_many :record_tag_relations
  has_many :tags, through: :record_tag_relations
  belongs_to :user
end
