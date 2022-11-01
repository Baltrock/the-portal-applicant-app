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
end
