class ComentariosController < ApplicationController

  def index
    @comentarios = User.all
  end

end
