class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  def show
    @articles = @user.articles
  end

  def new
    @user = User.new
  end

  def edit; end

  def update
    if @user.update(user_params)
      flash[:notice] = 'Your account information was successfully updated'
      redirect_to articles_path
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def signup; end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Welcome to the Alpha Blog! You have successfully signed up.'
      redirect_to articles_path
    else
      # Renders the new page with the form and the errors
      # The status code is 422 which means unprocessable entity
      # In Rails 7 you must pass the status: :unprocessable_entity option
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
