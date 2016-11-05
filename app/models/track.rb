class Track < ApplicationRecord
  has_many :genres
  belongs_to :album
end
