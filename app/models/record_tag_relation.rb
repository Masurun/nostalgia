class RecordTagRelation < ApplicationRecord
  belongs_to :record
  belongs_to :tag

end
