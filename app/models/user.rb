class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :supplies, dependent: :destroy
  has_many :foods, through: :supplies

  has_many :favorites, dependent: :destroy
  has_many :recipes, through: :favorites
end
