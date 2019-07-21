class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to question_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:question_id, :body)
  end
end
