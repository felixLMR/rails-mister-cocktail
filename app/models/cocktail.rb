class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, uniqueness: true, presence: true
  has_many :doses
  has_many :ingredients, through: :doses, dependent: :destroy
end
