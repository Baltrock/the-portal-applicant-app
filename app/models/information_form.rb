class InformationForm < ApplicationRecord
  belongs_to :user
  has_one_attached :profile_picture, dependent: :destroy
end
