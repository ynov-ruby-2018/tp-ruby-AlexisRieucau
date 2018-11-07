class HomepageController < ApplicationController
  def index
    #raise current_user.inspect
    @comments = Comment.all.order('created_at DESC')
    @users = User.all
  end
  def create
    Comment.create!(
      content: params[:comment],
      user_id: current_user.id
    )
    redirect_to homepage_index_path
  end
end
