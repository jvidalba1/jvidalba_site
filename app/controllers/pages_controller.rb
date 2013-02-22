class PagesController < ApplicationController
  # To change this template use File | Settings | File Templates.

  def home
    @title = "Inicio"

  end

  def contact
    @title = "Contacto"
	
	 respond_to do |format|
	 	format.html
	 	format.js
	 end
  end

end
