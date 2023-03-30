class Information < ApplicationRecord
  has_many :comments,dependent: :destroy
  has_many :favorites,dependent: :destroy
  belongs_to :customer
  belongs_to :prefecture_genre
  belongs_to :sport_genre
  
end
