class UsersController < ApplicationController
  def new
  end

  def add
  end

  def edit
  end
  
  def signin
  end
  
  def show
    @user = User.find(params[:id])
  end
  
end
