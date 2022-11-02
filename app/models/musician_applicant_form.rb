class MusicianApplicantForm < ApplicationRecord
  belongs_to :user
  has_many_attached :music_submissions, dependent: :destroy
  has_many_attached :music_video_submissions, dependent: :destroy
end
