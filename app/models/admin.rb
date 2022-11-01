class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :available_backstage_forms, dependent: :destroy
  has_many :available_frontstage_forms, dependent: :destroy
  has_many :new_project_forms, dependent: :destroy
  has_many :update_forms, dependent: :destroy
  has_many :glitch_input_forms, dependent: :destroy
  has_many :selection_forms, dependent: :destroy
  has_many :actor_applicant_forms, dependent: :destroy
end
