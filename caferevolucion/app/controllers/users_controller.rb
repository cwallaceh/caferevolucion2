class UsersController < ApplicationController

before_filter :authenticate_user!

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@posts = @user.posts.paginate(page: params[:page])
  end
end
