class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :initialize_variables


  private

    def initialize_variables
      @posts = Post.paginate(:page => params[:page], :per_page => 3).all.order(id: :desc)
      @users = User.all
      @admins = User.where("admininistrador = ?",1)
    end
end
