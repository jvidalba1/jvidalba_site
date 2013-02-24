class PagesController < ApplicationController
  # To change this template use File | Settings | File Templates.
  def index

  end

  def home
    @title = "Inicio"
    respond_to do |format|
      format.html
      format.js
    end
  end

end
