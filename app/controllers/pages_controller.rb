class PagesController < ApplicationController
  def index
  end

  def show
    @user = User.find_by(params[:user_id])
    @posts = Post.order('created_at desc')
  end
end
