class UsersController < ApplicationController

  def index
    @title = "Contacto"
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success]="listo mono"
      redirect_to root_path
    else
      flash[:error]="nada mono"
      redirect_to root_path
    end
  end
end
