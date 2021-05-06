class Specialty < ApplicationRecord
  has_many :identifications
  has_many :doctors, through: :identifications
end
