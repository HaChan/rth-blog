class PostsController < ApplicationController
  before_filter :require_access, only: %i[new create]

  def index
    @posts = Post.lastest.page(params[:page]).per(Post::PER_PAGE)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params.merge(user: current_user))
    puts @post.errors.inspect
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.lastest.page(params[:page]).per(Comment::PER_PAGE)
  end

  private
  def post_params
    params.require(:post).permit(Post::UPDATE_PARAMS)
  end

  def require_access
    unless current_user
      redirect_to posts_path
    end
  end
end
