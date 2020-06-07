class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
      flash[:success] = "Thank you for your Subscription, we keep you update!"
    else
      flash[:error] = "Something went wrong! We couldn't save your email."
    end
  end

end

private

def user_params
  params.permit(:email)
end
