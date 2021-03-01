class RecordsTag

  include ActiveModel::Model
  attr_accessor :content,:title, :tag_name,:user_id

  with_options presence: true do
    validates :content
    validates :title
    validates :tag_name
  end

  def save
    record = Record.create(content: content,title: title,user_id: user_id)
    tag = Tag.create(tag_name: tag_name)

    RecordTagRelation.create(record_id: record.id, tag_id: tag.id)
  end

end