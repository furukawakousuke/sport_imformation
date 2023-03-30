class PrefectureGenre < ApplicationRecord
  has_many :informations,dependent: :destroy
  
  

  
end
