class Api::PostsController < Api::ApplicationController
  def index
    @posts = Post.search(params).result
    render json: @posts.map(&:api_attributes), status: :ok
  end
end
