class Hometown < ApplicationRecord
  belongs_to :user, optional: true
  validates  :pref_id, :city, presence: true
  validates  :pref_id, numericality: { other_than: 1 }
end
