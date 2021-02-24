class PostsController < ApplicationController
  before_action :authenticate_user!,except:[:index,:show]
  before_action :set_post,  only:[:show,:edit,:destroy,:update]
  def index
    @posts=Post.all.includes(:user).order('created_at DESC')
  end
  def new
    @post=Post.new
  end
  def create
    @post=Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else
      render :edit
    end
  end

  def destroy
      if @post.destroy
        redirect_to posts_path
      end
  end
  private
  def post_params
    params.require(:post).permit(:content,:title,images: []).merge(user_id: current_user.id)
  end
  def set_post
    @post=Post.find(params[:id])
  end
end