class ActorApplicantForm < ApplicationRecord
  belongs_to :user
  has_many_attached :audition_submissions, dependent: :destroy
end
