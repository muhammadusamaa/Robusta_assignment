class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # For rating
  ratyrate_rater       
  has_many :watchlists
  has_many :movies, through: :watchlists  
end
