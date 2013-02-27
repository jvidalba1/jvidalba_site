# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :content, :email, :name


  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


  validates :name,    :presence    => { :message => " -Debes ingresar un nombre"},
                      :length   => {:maximum => 30, :message => " -Nombre muy largo" }


  validates :email,   :presence     => { :message => " -Debes ingresar un email"},
                      :format       => {:with => EMAIL_REGEX, :message => " -Formato de email invalido"}

  validates :content, :presence => { :message => " -Debes ingresar el mensaje"},
                      :length => {:within => 10..180, :message => " -El mensaje debe tener de 10 a 180 caracteres"}

end
