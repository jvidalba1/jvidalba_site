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


  validates :name, :presence => true, :length   => {:maximum => 50}
  validates :email, :presence => true,
            :format     => {:with => EMAIL_REGEX},
            :uniqueness => {:case_sensitive => false}
  validates :content, :presence => true, :length => {:within => 10..180}

end
