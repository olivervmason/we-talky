class Profile < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :user_id, message: "you can only have one profile"
  validates :name, :language, :target_language, :nationality , presence: true
  has_one_attached :picture
  has_one :language
  has_one :nationality
  has_one :city
  has_many :interests, through: :profile_interest
#Doubts here!:
  has_many :profile_languages
  has_many :languages, through: :profile_languages
end
