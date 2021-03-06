class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable
  # devise :database_authenticatable,
  #        :registerable,
  #        :confirmable,
  #        :recoverable,
  #        :rememberable,
  #        :trackable,
  #        :validatable
end
