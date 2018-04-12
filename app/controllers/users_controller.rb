class UsersController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]
  before_action :cargar_usuarios, on: [:show, :all]
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :update, :destroy]


  def edit
    @user=set_user
  end

  def all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Usuario was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new , notice: 'Hay errores.'}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

    def cargar_usuarios
      @users = User.all.order(id: :desc)
    end

    def user_params
      params.require(:user).permit(:nombre, :apellidos, :email, :admininistrador, :image)
    end

end
