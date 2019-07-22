class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to question_path(params[:post]['question_id'])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to request.referrer || root_url
  end

  private

  def post_params
    params.require(:post).permit(:question_id, :body)
  end
end
