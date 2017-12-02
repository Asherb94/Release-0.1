class UsersController < ApplicationController
  #before_save {email.downcase!}
  #before_filter {email.downcase!}
  
  
  
  def home
  end

  def login
  end
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
       log_in @user
       #Flash here later
	     redirect_to @user
    else
       render 'new'
    end
  end
  

  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
