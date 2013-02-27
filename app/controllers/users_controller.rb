class UsersController < ApplicationController

  def index
    @title = "Contacto"
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Mensaje enviado, muchas gracias! :)"
      redirect_to root_path
    else

      render 'index'
    end
  end


  def jvidalba1
    @title = "Mateo"
    @response1 = user_info('jvidalba1')
    @response =  user_repos('jvidalba1')
    @response2= HTTParty.get("https://api.github.com/gists/921286")

  end

  private
  def user_info(user)
    HTTParty.get( "https://api.github.com/users/#{user}")
  end

  def user_repos(user)
    HTTParty.get("https://api.github.com/users/#{user}/repos")
  end


end
