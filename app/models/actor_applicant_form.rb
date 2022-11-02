class ActorApplicantForm < ApplicationRecord
  belongs_to :user
  belongs_to :admin
  has_many_attached :audition_submissions, dependent: :destroy
end
