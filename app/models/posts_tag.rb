class PostsTag
  include ActiveModel::Model
  attr_accessor :user_id, :tag_name,:images

  def save
    post = Post.create(images: images,user_id: user_id)
    tag = Tag.where(tag_name: tag_name).first_or_initialize
    tag.save
    PostTagRelation.create!(post_id: post.id, tag_id: tag.id)
  end
  with_options presence: true do
    
    validates :images
    validates :tag_name
  end

end