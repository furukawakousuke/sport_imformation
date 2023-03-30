class SportGenre < ApplicationRecord
  has_many :informations,dependent: :destroy
end
