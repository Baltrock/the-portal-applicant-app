class ArtistApplicantForm < ApplicationRecord
  belongs_to :user
  has_many_attached :art_submissions, dependent: :destroy
end
