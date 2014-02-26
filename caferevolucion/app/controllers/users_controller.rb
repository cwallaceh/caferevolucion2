class UsersController < ApplicationController

before_filter :authenticate_user!
load_and_authorize_resource :only => :index

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@posts = @user.posts.paginate(page: params[:page])
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

end
