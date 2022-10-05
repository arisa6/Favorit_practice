class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :recipes, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def already_favorited?(phote)
    self.favorites.exists?(phote_id: phote.id)
  end
end