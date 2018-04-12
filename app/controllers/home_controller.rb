class HomeController < ApplicationController
  def welcome
    @posts=Post.all
    @users=User.all
    @admins=User.where("admininistrador = ?",1)
  end

  def index
    if user_signed_in?
      redirect_to :action => "welcome"
    end
  end
end
