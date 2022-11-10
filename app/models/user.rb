class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :information_form, dependent: :destroy
  has_many :actor_applicant_forms, dependent: :destroy
  has_many :artist_applicant_forms, dependent: :destroy
  has_many :musician_applicant_forms, dependent: :destroy
  has_many :crew_applicant_forms, dependent: :destroy
  has_many :complaint_forms, dependent: :destroy
  has_many :transfer_forms, dependent: :destroy
  has_one :resignation_forms, dependent: :destroy
  has_many :investor_company_forms, dependent: :destroy
  has_many :investor_invest_forms, dependent: :destroy
  has_many :management_applicant_forms, dependent: :destroy
  has_many :management_request_forms, dependent: :destroy
  has_many :management_review_forms, dependent: :destroy
  has_one :profile_picture
  has_one :music_submission
  has_one :music_video_submission
  has_one :art_submission
  has_one :audition_submission
end
